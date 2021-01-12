# digital_filter

Client makes digital audio station plug ins
Musicians apply filter to their tracks
Write a band pass filter.
Two filters, a low pass filter and high pass filter.
Low pass takes input, sound wave changes all frequencies in sound wave that are below minimum frequency.
High pass has a maximum frequency.

[80, 90, 100, 110, 120] sound wave

Default minimum and maximum frequency, 40 and 1000hz


Example Input [80, 90, 100, 110, 120], 40, 1000

Example Output [80, 90, 100, 110, 120]

Example Input [30, 90, 100, 110, 1200], 40, 1000

Example Output [40, 90, 100, 110, 1000]

```
Input                                 |         Output
[40], 40, 1000                        |       [40] # no change
[40, 100, 1000], 40, 1000             |      [40, 100, 1000] # no change
[30, 100, 1000], 40, 1000             |      [40, 100, 1000] # modifies lowest frequency
[40, 100, 1500], 40, 1000             |       [40, 100, 1000] # modifies highest frequency
[30, 100, 1500], 40, 1000             |       [40, 100, 1000] # modifies both frequencies
[80, 90, 100, 110, 120], 40, 1000     |       [80, 90, 100, 110, 120]  # filter has been applied but no changes were necessary
[30, 90, 100, 110, 1200], 40, 1000    |       [40, 90, 100, 110, 1000] # filter adjusted lowest frequency and highest frequency      
```
