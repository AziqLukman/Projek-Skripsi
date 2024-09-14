extends Node

var item_path = [
	"res://Baju/BajuAceh.tscn"
	, "res://Baju/BajuBali.tscn", "res://Baju/BajuBangkaBelitung.tscn", 
	"res://Baju/BajuBanten.tscn", "res://Baju/BajuBengkulu.tscn", "res://Baju/BajuGorontalo.tscn", 
	"res://Baju/BajuJabar.tscn", "res://Baju/BajuJakarta.tscn", "res://Baju/BajuJateng.tscn", 
	"res://Baju/BajuJatim.tscn", "res://Baju/BajuJogja.tscn", "res://Baju/BajuKalbar.tscn", 
	"res://Baju/BajuKalimantanUtara.tscn", "res://Baju/BajuKalsel.tscn", "res://Baju/BajuKalteng.tscn", 
	"res://Baju/BajuKaltim.tscn", "res://Baju/BajuKepri.tscn", "res://Baju/BajuLampung.tscn", 
	"res://Baju/BajuMaluku.tscn", "res://Baju/BajuMalukuUtara.tscn", "res://Baju/BajuNtb.tscn", 
	"res://Baju/BajuNtt.tscn", "res://Baju/BajuPapua.tscn", "res://Baju/BajuPapuaBarat.tscn", 
	"res://Baju/BajuRiau.tscn", "res://Baju/BajuSulawesiBarat.tscn", "res://Baju/BajuSulawesiSelatan.tscn", 
	"res://Baju/BajuSulawesiTengah.tscn", "res://Baju/BajuSulawesiTenggara.tscn", "res://Baju/BajuSulawesiUtara.tscn", 
	"res://Baju/BajuSumatraBarat.tscn", "res://Baju/BajuSumsel.tscn", "res://Baju/BajuSumut.tscn",
	"res://Senjata/SenjataAceh.tscn", "res://Senjata/SenjataBali.tscn", "res://Senjata/SenjataBangkaBelitung.tscn", 
	"res://Senjata/SenjataBanten.tscn", "res://Senjata/SenjataBengkulu.tscn", "res://Senjata/SenjataGorontalo.tscn", 
	"res://Senjata/SenjataJabar.tscn", "res://Senjata/SenjataJakarta.tscn", "res://Senjata/SenjataJambi.tscn", 
	"res://Senjata/SenjataJateng.tscn", "res://Senjata/SenjataJatim.tscn", "res://Senjata/SenjataJogja.tscn", 
	"res://Senjata/SenjataKalbar.tscn", "res://Senjata/SenjataKalimantanTengah.tscn", 
	"res://Senjata/SenjataKalimantanUtara.tscn", "res://Senjata/SenjataKalsel.tscn", 
	"res://Senjata/SenjataKaltim.tscn", "res://Senjata/SenjataKepri.tscn", "res://Senjata/SenjataLampung.tscn", 
	"res://Senjata/SenjataMaluku.tscn", "res://Senjata/SenjataMalukuUtara.tscn", "res://Senjata/SenjataNtb.tscn", 
	"res://Senjata/SenjataNtt.tscn", "res://Senjata/SenjataPapua.tscn", "res://Senjata/SenjataPapuaBarat.tscn", 
	"res://Senjata/SenjataRiau.tscn", "res://Senjata/SenjataSulawesiBarat.tscn", 
	"res://Senjata/SenjataSulawesiSelatan.tscn", "res://Senjata/SenjataSulawesiTengah.tscn", 
	"res://Senjata/SenjataSulawesiTenggara.tscn", "res://Senjata/SenjataSulawesiUtara.tscn", 
	"res://Senjata/SenjataSumatraSelatan.tscn", "res://Senjata/SenjataSumatraUtara.tscn", 
	"res://Senjata/SenjataSumbar.tscn","res://Baju/BajuJambi.tscn"
]

func remove_item(indeks):
	if indeks >= 0 and indeks < item_path.size():
		item_path.remove(indeks)
