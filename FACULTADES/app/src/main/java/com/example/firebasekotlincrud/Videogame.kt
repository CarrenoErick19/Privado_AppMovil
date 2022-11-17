package com.example.firebasekotlincrud
import com.google.firebase.database.Exclude
import com.google.firebase.database.IgnoreExtraProperties
//Clase que contiene los atributos de la entidad FACULTAD
@IgnoreExtraProperties
data class Videogame(val name: String? = null, val credito: String? = null,  val metodologia: String? = null, val url: String? = null, @Exclude val key: String? = null) {
}