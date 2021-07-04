package Model;

public class Utente {
	
	
	private String email;
	private String password;
	private String nome;
	private String cognome;
	private String username;
	
	public Utente() {}
	
	public Utente(String email, String password, String nome, String cognome, String username) {
		this.setEmail(email);
		this.setPassword(password);
		this.setNome(nome);
		this.setCognome(cognome);
		this.setUsername(username);
	}

	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	

}
