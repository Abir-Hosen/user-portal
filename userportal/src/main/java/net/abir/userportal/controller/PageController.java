package net.abir.userportal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.abir.portalbackend.dao.UserDao;
import net.abir.portalbackend.dto.User;
import net.abir.userportal.model.PasswordModel;

@Controller
public class PageController {
	
	private static final Logger logger = LoggerFactory.getLogger(PageController.class);
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@Autowired
	private UserDao userDao;

	@RequestMapping(value = { "/", "/profile" })
	public ModelAndView profile() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Profile Page");

		mv.addObject("userClickHome", true);

		return mv;
	}
	
/*	@RequestMapping(value = { "/change-password" })
	public ModelAndView changePassword() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Change Password");
		mv.addObject("userClickChangePassword", true);
		return mv;
	}*/

	@RequestMapping(value = { "/change-password" }, method=RequestMethod.GET)
	public ModelAndView changePassword(@RequestParam(name="operation", required=false) String operation) {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickChangePassword", true);
		mv.addObject("title", "Change Password");
		
		PasswordModel passwordModel= new PasswordModel();
		mv.addObject("pass", passwordModel);

		
		if(operation !=null) {
			if(operation.equals("passwordchanged")) {
				mv.addObject("message","Password changed Successfully!");
			}
			else if(operation.equals("wrongPassword")) {
				mv.addObject("message","Wrong previous password!");
			}
			else if(operation.equals("mismatchedPassword")) {
				mv.addObject("message","New and old password doesn't matched!");
			}
		}

		return mv;
	}

	
	@RequestMapping(value = { "/change-password" }, method=RequestMethod.POST)
	public String handleChangePassword(@Valid @ModelAttribute("pass") PasswordModel passwordModel,
			BindingResult result, Model model,
			HttpServletRequest request) {
		
		if(result.hasErrors()) {
			
			model.addAttribute("userClickChangePassword", true);
			model.addAttribute("title", "Change Password");

			
			return "page";
		}
		
		logger.info(passwordModel.toString());
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		
		User user = userDao.getByEmail(email);
		String userPassword=user.getPassword();
		
		String previousPassword = passwordModel.getPreviousPassword();
		String newPassword = passwordModel.getNewPassword();
		String confirmPassword = passwordModel.getConfirmPassword();
		
		if(passwordEncoder.matches(previousPassword, userPassword)) {
			if(confirmPassword.equals(newPassword)) {
				user.setPassword(passwordEncoder.encode(newPassword));
				userDao.updatePassword(user);
			}else {
				return "redirect:/change-password?operation=mismatchedPassword";
			}
			
		}else {
			return "redirect:/change-password?operation=wrongPassword";
		}

		return "redirect:/change-password?operation=passwordchanged";
	}
	
	@RequestMapping(value = { "/admin" })
	public ModelAndView admin() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Admin");
		mv.addObject("user", userDao.userList());

		mv.addObject("userClickAdmin", true);

		return mv;
	}
	
	@RequestMapping(value= {"/login"})
	public ModelAndView login(@RequestParam(name="error", required=false)String error,
			@RequestParam(name="logout", required=false)String logout, HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mv= new ModelAndView("login");
		if(error!=null) {
			mv.addObject("message", "Invalid Username & Password!");
		}
		if(logout!=null) {
			mv.addObject("logout", "User has successfully loggedout!");
		}
		mv.addObject("title", "Login");
		
		return mv;
	}
	
	@RequestMapping(value= {"/access-denied"})
	public ModelAndView accessDenied() {
		
		ModelAndView mv= new ModelAndView("pages/error");
		mv.addObject("title", "403-Access Denied");
		mv.addObject("errorTitle", "Aha! Caught You.");
		mv.addObject("errorDescription", "You are not authorized to view this page!");
		
		return mv;
	}
	
	@RequestMapping(value= {"/perform-logout"})
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth!=null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}

}
