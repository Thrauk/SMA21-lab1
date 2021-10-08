package com.example.helloandroid;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void clicked(View view) {
        switch(view.getId()) {
            case R.id.bclicked:
                EditText eName = (EditText) findViewById(R.id.text_input);
                TextView textView = (TextView) findViewById(R.id.greeting_text);
                textView.setText("Hello " + eName.getText());

        }
    }
}