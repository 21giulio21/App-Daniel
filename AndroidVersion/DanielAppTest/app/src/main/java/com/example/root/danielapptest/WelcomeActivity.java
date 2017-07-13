package com.example.root.danielapptest;

import android.content.Intent;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class WelcomeActivity extends AppCompatActivity {

    private static int TIME_OUT = 4000;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_welcome);

        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                /*
                    In questo thread controlliamo se l'utente è già loggato
                 */
                Intent i = new Intent(WelcomeActivity.this, EntryActivity.class);
                i.putExtra("alreadyLogged", 1);
                startActivity(i);
                finish();
            }
        }, TIME_OUT);
    }
}
