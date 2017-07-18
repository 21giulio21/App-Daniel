package com.example.root.danielapptest;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.EditText;

public class EntryActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_entry);

        Bundle extras = getIntent().getExtras();

        String logged = "";

        if(extras != null){
            logged = extras.getString("alreadyLogged");
        }

        EditText edit = (EditText) findViewById(R.id.editText);

        if(logged.equals("1"))
            edit.setText("user is already logged");
        else
            edit.setText("NOT logged !!!");



    }
}
