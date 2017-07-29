package com.example.root.danielapptest;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.content.SharedPreferences;
import android.content.Context;

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

                // Leggo dalle SharedPreference se l'utente si è gia loggato

                SharedPreferences sharedPref = getPreferences(Context.MODE_PRIVATE);

                /*
                 * Scrivo sulle shared preference solo per debug
                 */
                SharedPreferences.Editor editor = sharedPref.edit();
                editor.putInt("alreadyLogged", 1);
                editor.commit();

                int alreadyLogged = sharedPref.getInt("alreadyLogged", 0);

                if (alreadyLogged == 1){
                    /*
                       Se l'utente è gia loggato lo mandiamo subito alla pagina principale
                     */
                    Intent i = new Intent(WelcomeActivity.this, EntryActivity.class);
                    // i.putExtra("alreadyLogged", 1);
                    startActivity(i);
                }
                else{
                    /*
                       Se l'utente non risulta loggato è richiesto il login
                     */
                    Intent i = new Intent(WelcomeActivity.this, LoginActivity.class);
                    // i.putExtra("alreadyLogged", 1);
                    startActivity(i);
                }

                finish();
            }
        }, TIME_OUT);
    }
}
