package Model;

public class Osservazione {

	private int id;
	private String data;
	private String ora;
	private String città;
	private String indirizzo;
	private String località;
	private String fontiLuminose;
	private float magnitudineLimite;
	private float brillanzaTotale;
	private String livello;
	private String username;
	private float mediaMagnitudine;
	private float mediaBrillanza;
	private String mediaLivello;
	private String significatoM;
	private String significatoB;
	private float val;
	
	
	public Osservazione() {}
	
	public Osservazione(int id, String data, String ora, String città, String indirizzo, String località,
			String fontiLuminose, float magnitudineLimite, float brillanzaTotale, String livello, String username) {
		
		this.setId(id);
		this.setData(data);
		this.setOra(ora);
		this.setCittà(città);
		this.setIndirizzo(indirizzo);
		this.setLocalità(località);
		this.setFontiLuminose(fontiLuminose);
		this.setMagnitudineLimite(magnitudineLimite);
		this.setBrillanzaTotale(brillanzaTotale);
		this.setLivello(livello);
		this.setUsername(username);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getOra() {
		return ora;
	}

	public void setOra(String ora) {
		this.ora = ora;
	}

	public String getCittà() {
		return città;
	}

	public void setCittà(String città) {
		this.città = città;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public String getLocalità() {
		return località;
	}

	public void setLocalità(String località) {
		this.località = località;
	}

	public String getFontiLuminose() {
		return fontiLuminose;
	}

	public void setFontiLuminose(String fontiLuminose) {
		this.fontiLuminose = fontiLuminose;
	}

	public float getMagnitudineLimite() {
		return magnitudineLimite;
	}

	public void setMagnitudineLimite(float magnitudineLimite) {
		this.magnitudineLimite = magnitudineLimite;
	}

	public float getBrillanzaTotale() {
		return brillanzaTotale;
	}

	public void setBrillanzaTotale(float brillanzaTotale) {
		this.brillanzaTotale = brillanzaTotale;
	}

	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public float getMediaMagnitudine() {
		return mediaMagnitudine;
	}

	public void setMediaMagnitudine(float mediaMagnitudine) {
		this.mediaMagnitudine = mediaMagnitudine;
	}

	public float getMediaBrillanza() {
		return mediaBrillanza;
	}

	public void setMediaBrillanza(float mediaBrillanza) {
		this.mediaBrillanza = mediaBrillanza;
	}

	public String getSignificatoM() {
		return significatoM;
	}

	public void setSignificatoM(String significatoM) {
		this.significatoM = significatoM;
	}

	public String getSignificatoB() {
		return significatoB;
	}

	public void setSignificatoB(String significatoB) {
		this.significatoB = significatoB;
	}

	public String getLivello() {
		return livello;
	}

	public void setLivello(String livello) {
		this.livello = livello;
	}

	public String getMediaLivello() {
		return mediaLivello;
	}

	public void setMediaLivello(String mediaLivello) {
		this.mediaLivello = mediaLivello;
	}

	public float getVal() {
		return val;
	}

	public void setVal(float val) {
		this.val = val;
	}

	
}
