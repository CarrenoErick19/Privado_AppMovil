package com.example.facultad_1p
import com.google.firebase.firestore.Exclude
import com.google.firebase.firestore.IgnoreExtraProperties

@IgnoreExtraProperties
data class Facultad(val nombre: String? = null, val creditos: String? = null, val metodologia: String? = null, val url: String? = null, @Exclude val key: String? = null) {
}