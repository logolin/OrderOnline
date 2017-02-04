package com.zheng.repository;

import org.springframework.data.repository.CrudRepository;

import com.zheng.domain.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	/**
	 * 根据用户名查找用户
	 * @param userName
	 * @return
	 */
	User findByUserName(String userName);
}
