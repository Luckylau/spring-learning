package luckylau.spring.jwt.entity;

/**
 * @Author luckylau
 * @Date 2019/7/11
 */
public class UserInfo {

    private String userId;
    private String name;
    private String email;

    public UserInfo() {

    }

    public UserInfo(String userId) {
        this.userId = userId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || o.getClass() != getClass()) {
            return false;
        }
        UserInfo anotherUser = (UserInfo) o;
        return userId.equals(anotherUser.userId);
    }
}
