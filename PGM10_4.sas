data depress;
input case diagnose treat time outcome ; * outcome=1 is normal;
datalines;
  1  0  0  0  1
  1  0  0  1  1
  1  0  0  2  1
  2  0  0  0  1
  2  0  0  1  1
  2  0  0  2  1
  3  0  0  0  1
  3  0  0  1  1
  3  0  0  2  1
  4  0  0  0  1
  4  0  0  1  1
  4  0  0  2  1
  5  0  0  0  1
  5  0  0  1  1
  5  0  0  2  1
  6  0  0  0  1
  6  0  0  1  1
  6  0  0  2  1
  7  0  0  0  1
  7  0  0  1  1
  7  0  0  2  1
  8  0  0  0  1
  8  0  0  1  1
  8  0  0  2  1
  9  0  0  0  1
  9  0  0  1  1
  9  0  0  2  1
 10  0  0  0  1
 10  0  0  1  1
 10  0  0  2  1
 11  0  0  0  1
 11  0  0  1  1
 11  0  0  2  1
 12  0  0  0  1
 12  0  0  1  1
 12  0  0  2  1
 13  0  0  0  1
 13  0  0  1  1
 13  0  0  2  1
 14  0  0  0  1
 14  0  0  1  1
 14  0  0  2  1
 15  0  0  0  1
 15  0  0  1  1
 15  0  0  2  1
 16  0  0  0  1
 16  0  0  1  1
 16  0  0  2  1
 17  0  0  0  1
 17  0  0  1  1
 17  0  0  2  0
 18  0  0  0  1
 18  0  0  1  1
 18  0  0  2  0
 19  0  0  0  1
 19  0  0  1  1
 19  0  0  2  0
 20  0  0  0  1
 20  0  0  1  1
 20  0  0  2  0
 21  0  0  0  1
 21  0  0  1  1
 21  0  0  2  0
 22  0  0  0  1
 22  0  0  1  1
 22  0  0  2  0
 23  0  0  0  1
 23  0  0  1  1
 23  0  0  2  0
 24  0  0  0  1
 24  0  0  1  1
 24  0  0  2  0
 25  0  0  0  1
 25  0  0  1  1
 25  0  0  2  0
 26  0  0  0  1
 26  0  0  1  1
 26  0  0  2  0
 27  0  0  0  1
 27  0  0  1  1
 27  0  0  2  0
 28  0  0  0  1
 28  0  0  1  1
 28  0  0  2  0
 29  0  0  0  1
 29  0  0  1  1
 29  0  0  2  0
 30  0  0  0  1
 30  0  0  1  0
 30  0  0  2  1
 31  0  0  0  1
 31  0  0  1  0
 31  0  0  2  1
 32  0  0  0  1
 32  0  0  1  0
 32  0  0  2  1
 33  0  0  0  1
 33  0  0  1  0
 33  0  0  2  1
 34  0  0  0  1
 34  0  0  1  0
 34  0  0  2  1
 35  0  0  0  1
 35  0  0  1  0
 35  0  0  2  1
 36  0  0  0  1
 36  0  0  1  0
 36  0  0  2  1
 37  0  0  0  1
 37  0  0  1  0
 37  0  0  2  1
 38  0  0  0  1
 38  0  0  1  0
 38  0  0  2  1
 39  0  0  0  1
 39  0  0  1  0
 39  0  0  2  0
 40  0  0  0  1
 40  0  0  1  0
 40  0  0  2  0
 41  0  0  0  1
 41  0  0  1  0
 41  0  0  2  0
 42  0  0  0  0
 42  0  0  1  1
 42  0  0  2  1
 43  0  0  0  0
 43  0  0  1  1
 43  0  0  2  1
 44  0  0  0  0
 44  0  0  1  1
 44  0  0  2  1
 45  0  0  0  0
 45  0  0  1  1
 45  0  0  2  1
 46  0  0  0  0
 46  0  0  1  1
 46  0  0  2  1
 47  0  0  0  0
 47  0  0  1  1
 47  0  0  2  1
 48  0  0  0  0
 48  0  0  1  1
 48  0  0  2  1
 49  0  0  0  0
 49  0  0  1  1
 49  0  0  2  1
 50  0  0  0  0
 50  0  0  1  1
 50  0  0  2  1
 51  0  0  0  0
 51  0  0  1  1
 51  0  0  2  1
 52  0  0  0  0
 52  0  0  1  1
 52  0  0  2  1
 53  0  0  0  0
 53  0  0  1  1
 53  0  0  2  1
 54  0  0  0  0
 54  0  0  1  1
 54  0  0  2  1
 55  0  0  0  0
 55  0  0  1  1
 55  0  0  2  1
 56  0  0  0  0
 56  0  0  1  1
 56  0  0  2  0
 57  0  0  0  0
 57  0  0  1  1
 57  0  0  2  0
 58  0  0  0  0
 58  0  0  1  1
 58  0  0  2  0
 59  0  0  0  0
 59  0  0  1  1
 59  0  0  2  0
 60  0  0  0  0
 60  0  0  1  0
 60  0  0  2  1
 61  0  0  0  0
 61  0  0  1  0
 61  0  0  2  1
 62  0  0  0  0
 62  0  0  1  0
 62  0  0  2  1
 63  0  0  0  0
 63  0  0  1  0
 63  0  0  2  1
 64  0  0  0  0
 64  0  0  1  0
 64  0  0  2  1
 65  0  0  0  0
 65  0  0  1  0
 65  0  0  2  1
 66  0  0  0  0
 66  0  0  1  0
 66  0  0  2  1
 67  0  0  0  0
 67  0  0  1  0
 67  0  0  2  1
 68  0  0  0  0
 68  0  0  1  0
 68  0  0  2  1
 69  0  0  0  0
 69  0  0  1  0
 69  0  0  2  1
 70  0  0  0  0
 70  0  0  1  0
 70  0  0  2  1
 71  0  0  0  0
 71  0  0  1  0
 71  0  0  2  1
 72  0  0  0  0
 72  0  0  1  0
 72  0  0  2  1
 73  0  0  0  0
 73  0  0  1  0
 73  0  0  2  1
 74  0  0  0  0
 74  0  0  1  0
 74  0  0  2  1
 75  0  0  0  0
 75  0  0  1  0
 75  0  0  2  0
336  0  0  0  0
336  0  0  1  0
336  0  0  2  0
337  0  0  0  0
337  0  0  1  0
337  0  0  2  0
338  0  0  0  0
338  0  0  1  0
338  0  0  2  0
339  0  0  0  0
339  0  0  1  0
339  0  0  2  0
340  0  0  0  0
340  0  0  1  0
340  0  0  2  0
 76  0  1  0  1
 76  0  1  1  1
 76  0  1  2  1
 77  0  1  0  1
 77  0  1  1  1
 77  0  1  2  1
 78  0  1  0  1
 78  0  1  1  1
 78  0  1  2  1
 79  0  1  0  1
 79  0  1  1  1
 79  0  1  2  1
 80  0  1  0  1
 80  0  1  1  1
 80  0  1  2  1
 81  0  1  0  1
 81  0  1  1  1
 81  0  1  2  1
 82  0  1  0  1
 82  0  1  1  1
 82  0  1  2  1
 83  0  1  0  1
 83  0  1  1  1
 83  0  1  2  1
 84  0  1  0  1
 84  0  1  1  1
 84  0  1  2  1
 85  0  1  0  1
 85  0  1  1  1
 85  0  1  2  1
 86  0  1  0  1
 86  0  1  1  1
 86  0  1  2  1
 87  0  1  0  1
 87  0  1  1  1
 87  0  1  2  1
 88  0  1  0  1
 88  0  1  1  1
 88  0  1  2  1
 89  0  1  0  1
 89  0  1  1  1
 89  0  1  2  1
 90  0  1  0  1
 90  0  1  1  1
 90  0  1  2  1
 91  0  1  0  1
 91  0  1  1  1
 91  0  1  2  1
 92  0  1  0  1
 92  0  1  1  1
 92  0  1  2  1
 93  0  1  0  1
 93  0  1  1  1
 93  0  1  2  1
 94  0  1  0  1
 94  0  1  1  1
 94  0  1  2  1
 95  0  1  0  1
 95  0  1  1  1
 95  0  1  2  1
 96  0  1  0  1
 96  0  1  1  1
 96  0  1  2  1
 97  0  1  0  1
 97  0  1  1  1
 97  0  1  2  1
 98  0  1  0  1
 98  0  1  1  1
 98  0  1  2  1
 99  0  1  0  1
 99  0  1  1  1
 99  0  1  2  1
100  0  1  0  1
100  0  1  1  1
100  0  1  2  1
101  0  1  0  1
101  0  1  1  1
101  0  1  2  1
102  0  1  0  1
102  0  1  1  1
102  0  1  2  1
103  0  1  0  1
103  0  1  1  1
103  0  1  2  1
104  0  1  0  1
104  0  1  1  1
104  0  1  2  1
105  0  1  0  1
105  0  1  1  1
105  0  1  2  1
106  0  1  0  1
106  0  1  1  1
106  0  1  2  1
107  0  1  0  1
107  0  1  1  0
107  0  1  2  1
108  0  1  0  1
108  0  1  1  0
108  0  1  2  1
109  0  1  0  1
109  0  1  1  0
109  0  1  2  1
110  0  1  0  1
110  0  1  1  0
110  0  1  2  1
111  0  1  0  1
111  0  1  1  0
111  0  1  2  1
112  0  1  0  1
112  0  1  1  0
112  0  1  2  1
113  0  1  0  0
113  0  1  1  1
113  0  1  2  1
114  0  1  0  0
114  0  1  1  1
114  0  1  2  1
115  0  1  0  0
115  0  1  1  1
115  0  1  2  1
116  0  1  0  0
116  0  1  1  1
116  0  1  2  1
117  0  1  0  0
117  0  1  1  1
117  0  1  2  1
118  0  1  0  0
118  0  1  1  1
118  0  1  2  1
119  0  1  0  0
119  0  1  1  1
119  0  1  2  1
120  0  1  0  0
120  0  1  1  1
120  0  1  2  1
121  0  1  0  0
121  0  1  1  1
121  0  1  2  1
122  0  1  0  0
122  0  1  1  1
122  0  1  2  1
123  0  1  0  0
123  0  1  1  1
123  0  1  2  1
124  0  1  0  0
124  0  1  1  1
124  0  1  2  1
125  0  1  0  0
125  0  1  1  1
125  0  1  2  1
126  0  1  0  0
126  0  1  1  1
126  0  1  2  1
127  0  1  0  0
127  0  1  1  1
127  0  1  2  1
128  0  1  0  0
128  0  1  1  1
128  0  1  2  1
129  0  1  0  0
129  0  1  1  1
129  0  1  2  1
130  0  1  0  0
130  0  1  1  1
130  0  1  2  1
131  0  1  0  0
131  0  1  1  1
131  0  1  2  1
132  0  1  0  0
132  0  1  1  1
132  0  1  2  1
133  0  1  0  0
133  0  1  1  1
133  0  1  2  1
134  0  1  0  0
134  0  1  1  1
134  0  1  2  1
135  0  1  0  0
135  0  1  1  1
135  0  1  2  0
136  0  1  0  0
136  0  1  1  1
136  0  1  2  0
137  0  1  0  0
137  0  1  1  0
137  0  1  2  1
138  0  1  0  0
138  0  1  1  0
138  0  1  2  1
139  0  1  0  0
139  0  1  1  0
139  0  1  2  1
140  0  1  0  0
140  0  1  1  0
140  0  1  2  1
141  0  1  0  0
141  0  1  1  0
141  0  1  2  1
142  0  1  0  0
142  0  1  1  0
142  0  1  2  1
143  0  1  0  0
143  0  1  1  0
143  0  1  2  1
144  0  1  0  0
144  0  1  1  0
144  0  1  2  1
145  0  1  0  0
145  0  1  1  0
145  0  1  2  1
146  1  0  0  1
146  1  0  1  1
146  1  0  2  1
147  1  0  0  1
147  1  0  1  1
147  1  0  2  1
148  1  0  0  1
148  1  0  1  1
148  1  0  2  0
149  1  0  0  1
149  1  0  1  1
149  1  0  2  0
150  1  0  0  1
150  1  0  1  0
150  1  0  2  1
151  1  0  0  1
151  1  0  1  0
151  1  0  2  1
152  1  0  0  1
152  1  0  1  0
152  1  0  2  1
153  1  0  0  1
153  1  0  1  0
153  1  0  2  1
154  1  0  0  1
154  1  0  1  0
154  1  0  2  1
155  1  0  0  1
155  1  0  1  0
155  1  0  2  1
156  1  0  0  1
156  1  0  1  0
156  1  0  2  1
157  1  0  0  1
157  1  0  1  0
157  1  0  2  1
158  1  0  0  1
158  1  0  1  0
158  1  0  2  0
159  1  0  0  1
159  1  0  1  0
159  1  0  2  0
160  1  0  0  1
160  1  0  1  0
160  1  0  2  0
161  1  0  0  1
161  1  0  1  0
161  1  0  2  0
162  1  0  0  1
162  1  0  1  0
162  1  0  2  0
163  1  0  0  1
163  1  0  1  0
163  1  0  2  0
164  1  0  0  1
164  1  0  1  0
164  1  0  2  0
165  1  0  0  1
165  1  0  1  0
165  1  0  2  0
166  1  0  0  1
166  1  0  1  0
166  1  0  2  0
167  1  0  0  0
167  1  0  1  1
167  1  0  2  1
168  1  0  0  0
168  1  0  1  1
168  1  0  2  1
169  1  0  0  0
169  1  0  1  1
169  1  0  2  1
170  1  0  0  0
170  1  0  1  1
170  1  0  2  1
171  1  0  0  0
171  1  0  1  1
171  1  0  2  1
172  1  0  0  0
172  1  0  1  1
172  1  0  2  1
173  1  0  0  0
173  1  0  1  1
173  1  0  2  1
174  1  0  0  0
174  1  0  1  1
174  1  0  2  1
175  1  0  0  0
175  1  0  1  1
175  1  0  2  1
176  1  0  0  0
176  1  0  1  1
176  1  0  2  0
177  1  0  0  0
177  1  0  1  1
177  1  0  2  0
178  1  0  0  0
178  1  0  1  1
178  1  0  2  0
179  1  0  0  0
179  1  0  1  1
179  1  0  2  0
180  1  0  0  0
180  1  0  1  1
180  1  0  2  0
181  1  0  0  0
181  1  0  1  1
181  1  0  2  0
182  1  0  0  0
182  1  0  1  1
182  1  0  2  0
183  1  0  0  0
183  1  0  1  1
183  1  0  2  0
184  1  0  0  0
184  1  0  1  1
184  1  0  2  0
185  1  0  0  0
185  1  0  1  1
185  1  0  2  0
186  1  0  0  0
186  1  0  1  1
186  1  0  2  0
187  1  0  0  0
187  1  0  1  1
187  1  0  2  0
188  1  0  0  0
188  1  0  1  1
188  1  0  2  0
189  1  0  0  0
189  1  0  1  1
189  1  0  2  0
190  1  0  0  0
190  1  0  1  1
190  1  0  2  0
191  1  0  0  0
191  1  0  1  0
191  1  0  2  1
192  1  0  0  0
192  1  0  1  0
192  1  0  2  1
193  1  0  0  0
193  1  0  1  0
193  1  0  2  1
194  1  0  0  0
194  1  0  1  0
194  1  0  2  1
195  1  0  0  0
195  1  0  1  0
195  1  0  2  1
196  1  0  0  0
196  1  0  1  0
196  1  0  2  1
197  1  0  0  0
197  1  0  1  0
197  1  0  2  1
198  1  0  0  0
198  1  0  1  0
198  1  0  2  1
199  1  0  0  0
199  1  0  1  0
199  1  0  2  1
200  1  0  0  0
200  1  0  1  0
200  1  0  2  1
201  1  0  0  0
201  1  0  1  0
201  1  0  2  1
202  1  0  0  0
202  1  0  1  0
202  1  0  2  1
203  1  0  0  0
203  1  0  1  0
203  1  0  2  1
204  1  0  0  0
204  1  0  1  0
204  1  0  2  1
205  1  0  0  0
205  1  0  1  0
205  1  0  2  1
206  1  0  0  0
206  1  0  1  0
206  1  0  2  1
207  1  0  0  0
207  1  0  1  0
207  1  0  2  1
208  1  0  0  0
208  1  0  1  0
208  1  0  2  1
209  1  0  0  0
209  1  0  1  0
209  1  0  2  1
210  1  0  0  0
210  1  0  1  0
210  1  0  2  1
211  1  0  0  0
211  1  0  1  0
211  1  0  2  1
212  1  0  0  0
212  1  0  1  0
212  1  0  2  1
213  1  0  0  0
213  1  0  1  0
213  1  0  2  1
214  1  0  0  0
214  1  0  1  0
214  1  0  2  1
215  1  0  0  0
215  1  0  1  0
215  1  0  2  1
216  1  0  0  0
216  1  0  1  0
216  1  0  2  1
217  1  0  0  0
217  1  0  1  0
217  1  0  2  1
218  1  0  0  0
218  1  0  1  0
218  1  0  2  0
219  1  0  0  0
219  1  0  1  0
219  1  0  2  0
220  1  0  0  0
220  1  0  1  0
220  1  0  2  0
221  1  0  0  0
221  1  0  1  0
221  1  0  2  0
222  1  0  0  0
222  1  0  1  0
222  1  0  2  0
223  1  0  0  0
223  1  0  1  0
223  1  0  2  0
224  1  0  0  0
224  1  0  1  0
224  1  0  2  0
225  1  0  0  0
225  1  0  1  0
225  1  0  2  0
226  1  0  0  0
226  1  0  1  0
226  1  0  2  0
227  1  0  0  0
227  1  0  1  0
227  1  0  2  0
228  1  0  0  0
228  1  0  1  0
228  1  0  2  0
229  1  0  0  0
229  1  0  1  0
229  1  0  2  0
230  1  0  0  0
230  1  0  1  0
230  1  0  2  0
231  1  0  0  0
231  1  0  1  0
231  1  0  2  0
232  1  0  0  0
232  1  0  1  0
232  1  0  2  0
233  1  0  0  0
233  1  0  1  0
233  1  0  2  0
234  1  0  0  0
234  1  0  1  0
234  1  0  2  0
235  1  0  0  0
235  1  0  1  0
235  1  0  2  0
236  1  0  0  0
236  1  0  1  0
236  1  0  2  0
237  1  0  0  0
237  1  0  1  0
237  1  0  2  0
238  1  0  0  0
238  1  0  1  0
238  1  0  2  0
239  1  0  0  0
239  1  0  1  0
239  1  0  2  0
240  1  0  0  0
240  1  0  1  0
240  1  0  2  0
241  1  0  0  0
241  1  0  1  0
241  1  0  2  0
242  1  0  0  0
242  1  0  1  0
242  1  0  2  0
243  1  0  0  0
243  1  0  1  0
243  1  0  2  0
244  1  0  0  0
244  1  0  1  0
244  1  0  2  0
245  1  0  0  0
245  1  0  1  0
245  1  0  2  0
246  1  1  0  1
246  1  1  1  1
246  1  1  2  1
247  1  1  0  1
247  1  1  1  1
247  1  1  2  1
248  1  1  0  1
248  1  1  1  1
248  1  1  2  1
249  1  1  0  1
249  1  1  1  1
249  1  1  2  1
250  1  1  0  1
250  1  1  1  1
250  1  1  2  1
251  1  1  0  1
251  1  1  1  1
251  1  1  2  1
252  1  1  0  1
252  1  1  1  1
252  1  1  2  1
253  1  1  0  1
253  1  1  1  1
253  1  1  2  0 
254  1  1  0  1
254  1  1  1  1
254  1  1  2  0 
255  1  1  0  1
255  1  1  1  0
255  1  1  2  1
256  1  1  0  1
256  1  1  1  0
256  1  1  2  1
257  1  1  0  1
257  1  1  1  0
257  1  1  2  1
258  1  1  0  1
258  1  1  1  0
258  1  1  2  1
259  1  1  0  1
259  1  1  1  0
259  1  1  2  1
260  1  1  0  1
260  1  1  1  0
260  1  1  2  0
261  1  1  0  1
261  1  1  1  0
261  1  1  2  0
262  1  1  0  0
262  1  1  1  1
262  1  1  2  1
263  1  1  0  0
263  1  1  1  1
263  1  1  2  1
264  1  1  0  0
264  1  1  1  1
264  1  1  2  1
265  1  1  0  0
265  1  1  1  1
265  1  1  2  1
266  1  1  0  0
266  1  1  1  1
266  1  1  2  1
267  1  1  0  0
267  1  1  1  1
267  1  1  2  1
268  1  1  0  0
268  1  1  1  1
268  1  1  2  1
269  1  1  0  0
269  1  1  1  1
269  1  1  2  1
270  1  1  0  0
270  1  1  1  1
270  1  1  2  1
271  1  1  0  0
271  1  1  1  1
271  1  1  2  1
272  1  1  0  0
272  1  1  1  1
272  1  1  2  1
273  1  1  0  0
273  1  1  1  1
273  1  1  2  1
274  1  1  0  0
274  1  1  1  1
274  1  1  2  1
275  1  1  0  0
275  1  1  1  1
275  1  1  2  1
276  1  1  0  0
276  1  1  1  1
276  1  1  2  1
277  1  1  0  0
277  1  1  1  1
277  1  1  2  1
278  1  1  0  0
278  1  1  1  1
278  1  1  2  1
279  1  1  0  0
279  1  1  1  1
279  1  1  2  1
280  1  1  0  0
280  1  1  1  1
280  1  1  2  1
281  1  1  0  0
281  1  1  1  1
281  1  1  2  1
282  1  1  0  0
282  1  1  1  1
282  1  1  2  1
283  1  1  0  0
283  1  1  1  1
283  1  1  2  1
284  1  1  0  0
284  1  1  1  1
284  1  1  2  1
285  1  1  0  0
285  1  1  1  1
285  1  1  2  1
286  1  1  0  0
286  1  1  1  1
286  1  1  2  1
287  1  1  0  0
287  1  1  1  1
287  1  1  2  1
288  1  1  0  0
288  1  1  1  1
288  1  1  2  1
289  1  1  0  0
289  1  1  1  1
289  1  1  2  1
290  1  1  0  0
290  1  1  1  1
290  1  1  2  1
291  1  1  0  0
291  1  1  1  1
291  1  1  2  1
292  1  1  0  0
292  1  1  1  1
292  1  1  2  1
293  1  1  0  0
293  1  1  1  1 
293  1  1  2  0
294  1  1  0  0
294  1  1  1  1 
294  1  1  2  0
295  1  1  0  0
295  1  1  1  1 
295  1  1  2  0
296  1  1  0  0
296  1  1  1  1 
296  1  1  2  0
297  1  1  0  0
297  1  1  1  1 
297  1  1  2  0
298  1  1  0  0
298  1  1  1  0
298  1  1  2  1
299  1  1  0  0
299  1  1  1  0
299  1  1  2  1
300  1  1  0  0
300  1  1  1  0
300  1  1  2  1
301  1  1  0  0
301  1  1  1  0
301  1  1  2  1
302  1  1  0  0
302  1  1  1  0
302  1  1  2  1
303  1  1  0  0
303  1  1  1  0
303  1  1  2  1
304  1  1  0  0
304  1  1  1  0
304  1  1  2  1
305  1  1  0  0
305  1  1  1  0
305  1  1  2  1
306  1  1  0  0
306  1  1  1  0
306  1  1  2  1
307  1  1  0  0
307  1  1  1  0
307  1  1  2  1
308  1  1  0  0
308  1  1  1  0
308  1  1  2  1
309  1  1  0  0
309  1  1  1  0
309  1  1  2  1
310  1  1  0  0
310  1  1  1  0
310  1  1  2  1
311  1  1  0  0
311  1  1  1  0
311  1  1  2  1
312  1  1  0  0
312  1  1  1  0
312  1  1  2  1
313  1  1  0  0
313  1  1  1  0
313  1  1  2  1
314  1  1  0  0
314  1  1  1  0
314  1  1  2  1
315  1  1  0  0
315  1  1  1  0
315  1  1  2  1
316  1  1  0  0
316  1  1  1  0
316  1  1  2  1
317  1  1  0  0
317  1  1  1  0
317  1  1  2  1
318  1  1  0  0
318  1  1  1  0
318  1  1  2  1
319  1  1  0  0
319  1  1  1  0
319  1  1  2  1
320  1  1  0  0
320  1  1  1  0
320  1  1  2  1
321  1  1  0  0
321  1  1  1  0
321  1  1  2  1
322  1  1  0  0
322  1  1  1  0
322  1  1  2  1
323  1  1  0  0
323  1  1  1  0
323  1  1  2  1
324  1  1  0  0
324  1  1  1  0
324  1  1  2  1
325  1  1  0  0
325  1  1  1  0
325  1  1  2  1
326  1  1  0  0
326  1  1  1  0
326  1  1  2  1
327  1  1  0  0
327  1  1  1  0
327  1  1  2  1
328  1  1  0  0
328  1  1  1  0
328  1  1  2  1
329  1  1  0  0
329  1  1  1  0
329  1  1  2  1
330  1  1  0  0
330  1  1  1  0
330  1  1  2  0
331  1  1  0  0
331  1  1  1  0
331  1  1  2  0
332  1  1  0  0
332  1  1  1  0
332  1  1  2  0
333  1  1  0  0
333  1  1  1  0
333  1  1  2  0
334  1  1  0  0
334  1  1  1  0
334  1  1  2  0
335  1  1  0  0
335  1  1  1  0
335  1  1  2  0
; 
proc genmod DATA=depress descending; 
          class case;
          model outcome = diagnose treat time treat*time / dist=bin link=logit type3;
          repeated subject=case / type=exch corrw;
/*proc nlmixed qpoints=200;
parms alpha=-.03 beta1=-1.3 beta2=-.06 beta3=.48 beta4=1.02 sigma=.066;
eta = alpha + beta1*diagnose + beta2*treat + beta3*time + beta4*treat*time + u;
p = exp(eta)/(1 + exp(eta));
model outcome ~ binary(p);
random u ~ normal(0, sigma*sigma) subject = case; */
run;
