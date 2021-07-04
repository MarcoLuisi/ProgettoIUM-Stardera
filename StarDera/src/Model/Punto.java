package Model;

public class Punto {
	
	private int id;
	private String nome;
	private String città;
	private String indirizzo;
	private String descrizione;
	private String telescopi;
	private String wifi;
	private String visibilità;
	private String urlFoto;
	
	public Punto() {}
	
	public Punto(int id, String nome, String città, String indirizzo, String descrizione, String t, String w, String v) {
		this.setId(id);
		this.setNome(nome);
		this.setCittà(città);
		this.setDescrizione(descrizione);
		this.setIndirizzo(indirizzo);
		this.setTelescopi(t);
		this.setWifi(w);
		this.setVisibilità(v);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public String getCittà() {
		return città;
	}

	public void setCittà(String città) {
		this.città = città;
	}

	public String getUrlFoto() {
		return urlFoto;
	}

	public void setUrlFoto(String urlFoto) {
		this.urlFoto = urlFoto;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getTelescopi() {
		return telescopi;
	}

	public void setTelescopi(String telescopi) {
		this.telescopi = telescopi;
	}

	public String getVisibilità() {
		return visibilità;
	}

	public void setVisibilità(String visibilità) {
		this.visibilità = visibilità;
	}

	public String getWifi() {
		return wifi;
	}

	public void setWifi(String wifi) {
		this.wifi = wifi;
	}
	
	

}
