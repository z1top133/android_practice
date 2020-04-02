package com.example.myapplication_practice

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import kotlinx.android.synthetic.main.activity_main_page.*

class MainPage : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main_page)

        val travelList = ArrayList<Travel>()
        for(i in 0 until 10){
            travelList.add(Travel(R.drawable.italy, "Italy" + i))
        }
        val adapter = RecyclerViewAdapter(travelList, LayoutInflater.from(this@MainPage))
        travel_container.adapter = adapter
        travel_container.layoutManager = LinearLayoutManager(this@MainPage)

        person.setOnClickListener {
            val intent = Intent(this, LoginPage::class.java)
            startActivity(intent)
        }
    }
}


class RecyclerViewAdapter(
    val itemList: ArrayList<Travel>,
    val inflater: LayoutInflater
) : RecyclerView.Adapter<RecyclerViewAdapter.ViewHolder>() {

    inner class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        val travelName: TextView
        val travelPhoto: ImageView

        init {
            travelName = itemView.findViewById(R.id.travel_name)
            travelPhoto = itemView.findViewById(R.id.travel_photo)
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = inflater.inflate(R.layout.item_view, parent, false)
        return ViewHolder(view)
    }

    override fun getItemCount(): Int {
        return itemList.size
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.travelName.setText(itemList.get(position).name)
        holder.travelPhoto.setImageResource(itemList.get(position).Photo)
    }
}

class Travel(val Photo: Int, val name: String) {

}

class user(val email : String, val password : String, val sex : Boolean, val age: Int,
           val travelStyle: Int, val travelSpot : Int, val Photo : Int, val profile: String,
           val language : Int){

}