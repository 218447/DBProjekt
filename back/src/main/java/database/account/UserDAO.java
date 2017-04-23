package database.account;

public interface UserDAO {

    User findByUsername(String username);
    void insertUser(User newUser);
    Role findRole(String username);
    boolean registerUser(String username, String password);
}
