//////////////////////////////////////////////////////////////////////////
////////////////////////state_city.js/////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//city_states['India'] = '|New Delhi||Andaman/Nicobar Islands|Andhra Pradesh|Arunachal Pradesh|Assam|Bihar|Chandigarh|Chhattisgarh|Dadra/Nagar Haveli|Daman/Diu|Goa|Gujarat|Haryana|Himachal Pradesh|Jammu/Kashmir|Jharkhand|Karnataka|Kerala|Lakshadweep|Madhya Pradesh|Maharashtra|Manipur|Meghalaya|Mizoram|Nagaland|Orissa|Pondicherry|Punjab|Rajasthan|Sikkim|Tamil Nadu|Tripura|Uttaranchal|Uttar Pradesh|West Bengal';

/*var state = Object();

//India

state['india'] = 'Andhra Pradesh|Arunachal Pradesh|Assam|Bihar|Chhattisgarh|Goa|Gujarat|Haryana|Himachal Pradesh|Jammu and Kashmir|Jharkhand|Karnataka|Kerala|Madhya Pradesh|Maharashtra|Manipur|Meghalaya|Mizoram|Nagaland|New Delhi|Odisha|Punjab|Rajasthan|Sikkim|Tamil Nadu|Telangana|Tripura|Uttar Pradesh|Uttarakhand|West Bengal|Andaman and Nicobar|Chandigarh|Dadra and Nagar Haveli|Daman and Diu|Lakshadweep|Puducherry';
*/
///////////////////////////////////////////////////////////

var district = Object();

//Andhra Pradesh
district['Andhra Pradesh']='Anantapur|Chittoor|East Godavari|Guntur|Kadapa|Krishna|Kurnool|Nellore|Prakasam|Srikakulam|Visakhapatnam|Vizianagaram|West Godavari';
//Arunachal Pradesh
district['Arunachal Pradesh']='Diban Valley( Anini Valley)|East Kameng Seppa|Itanagar|East Siang(Passighat)|Lohit(Tezu)|Lower Subansiri(Ziro)|Khonsa|Roin|Tawang|Changalang|Dibang Valley|Daporijo|Bomdila|Alog( West Siang )';
//Assam
district['Assam']='Barpeta|Bongaigaon|Cachar|Darrang|Dhemaji|Dhubri|Dibrugarh|Goalpara|Golaghat|Hailakandi|Jorhat|Kamrup|Karbi Anglong|Karimganj|Kokrajhar|Lakhimpur|Marigaon|Nagaon|Nalbari|North Cachar Hills|Sibsagar|Sonitpur|Tinsukia';
//Bihar
district['Bihar']='Araria|Arwal|Aurangabad|Banka|Begusarai|Bhagalpur|Bhojpur|Buxar|Darbhanga|East Champaran|Gaya|Gopalganj|Jamui|Jehanabad|Khagaria|Kishanganj|Kaimur|Katihar|	Lakhisarai|Madhubani|Madhepura|Muzaffarpur|Nalanda|Nawada|Patna|Purnia|Rohtas|Saharsa|Samastipur|Sheohar|Sheikhpura|Saran|Sitamarhi|Supaul|Siwan|Vaishali|West Champaran';
//Chhattisgarh
district['Chhattisgarh']='Balod|Baloda Bazar|Balrampur|Bastar|Bemetara|Bijapur|Bilaspur|Dantewada|Dhamtari|Durg|Gariaband|Jashpur|Janjgir-Champa|Kondagaon|Korba|Koriya|Kanker|Kabirdham|Mahasamund|Mungeli|Narayanpur|Raigarh|Rajnandgaon|Raipur|Surajpur|Sukma|Surguja';
//Goa
district['Goa']='North Goa|South Goa';
//Gujarat
district['Gujarat']='Ahmedabad|Amreli|Anand|Aravalli|Banaskantha|Bharuch|Bhavnagar|Botad|Chhota Udaipur|Dahod|Dahod|Dang|Devbhoomi Dwarka|Gandhinagar|Gir Somnath|Jamnagar|Junagadh|Kutch|Kheda|Mahisagar|Mehsana|Morbi|Narmada|Navsari|Panchmahal|Patan|Porbandar|Rajkot|Sabarkantha|Surat|Surendranagar|Tapi|Vadodara|Valsad';
//Haryana
district['Haryana']='Ambala|Bhiwani|Faridabad|Fatehabad|Gurgaon|Hisar|Jhajjar|Jind|Kaithal|Karnal|Kurukshetra|Mahendragarh|Mewat|Palwal|Panchkula|Panipat|Rewari|Rohtak|Sirsa|Sonipat|Yamuna Nagar';
//Himachal Pradesh
district['Himachal Pradesh']='Bilaspur|Chamba|Hamirpur|Kangra|Kinnaur|Kullu|Lahaul and Spiti|Mandi|Shimla|Sirmaur|Solan|Una';
//Jammu and Kashmir
district['Jammu and Kashmir']='Kathua|Samba|Jammu|Rajouri|Reasi|Udhampur|Ramban|Doda|Kishtwar|Poonch|Anantnag|Kulgam|Pulwama|Shopian|Budgam|Srinagar|Ganderbal|Bandipora|Baramulla|Kupwara|Kargil|Leh';
//Jharkhand
district['Jharkhand']='Garhwa|Palamu|Latehar|Chatra|Hazaribagh|Koderma|Giridih|Ramgarh|Bokaro|Dhanbad|Lohardaga|Gumla|Simdega|Ranchi|Khunti|West Singhbhum|Saraikela|Kharsawan|East Singhbhum|Jamtara|Deoghar|Dumka|Pakur|Godda|Sahebganj';
//Karnataka
district['Karnataka']='Bagalkot|Bangalore|Bangalore Rural|Belgaum|Bellary|Bidar|Bijapur|Chamarajanagar|Chikkaballapura|Chikmagalur|Chitradurga|Dakshina Kannada|Davanagere|Dharwad|Gadag|Gulbarga|Hassan|Haveri|Kodagu|Kolar|Koppal|Mandya|Mysore|Raichur|Ramanagara|Shimoga|Tumkur|Udupi|Uttara Kannada|Yadgir';
//Kerala
district['Kerala']='Alappuzha|Ernakulam|Idukki|Kannur|Kasaragod|Kollam|Kottayam|Kozhikode|Malappuram|Palakkad|Pathanamthitta|Thiruvananthapuram|Thrissur|Wayanad';
//Madhya Pradesh
district['Madhya Pradesh']='Bhopal|Raisen|Rajgarh|Sehore|Vidisha|Chambal|Morena|Sheopur|Bhind|Ashoknagar|Shivpuri|Datia|Guna|Gwalior|Alirajpur|Barwani|Burhanpur|Dhar|Indore|Jhabua|Khandwa (East Nimar)|Khargone (West Nimar)|Balaghat|Chhindwara|Jabalpur|Katni|Mandla|Narsinghpur|Seoni|Betul|Harda|Hoshangabad|Rewa|Satna|Sidhi|Singrauli|Chhatarpur|Damoh|Panna|Sagar|Tikamgarh|Anuppur|Shahdol|Umaria|Dindori|Agar Malwa|Dewas|Mandsaur|Neemuch|Ratlam|Shajapur|Ujjain';
//Maharashtra
district['Maharashtra']='Ahmadnagar|Akola|Amravati|Aurangabad|Bhandara|Bid|Buldana|Chandrapur|Dhule|Gadchiroli|Gondiya|Hingoli|Jalgaon|Jalna|Kolhapur|Latur|Mumbai City|Mumbai|Suburban|Nagpur|Nanded|Nandurbar|Nashik|Osmanabad|Palghar|Parbhani|Pune|Raigarh|Ratnagiri|Sangli|Satara|Sindhudurg|Solapur|Thane|Wardha|Washim|Yavatmal';
//Manipur
district['Manipur']='Bishnupur|Chandel|Churachandpur|Imphal East|Imphal West|Senapati|Tamenglong|Thoubal|Ukhrul';
//Meghalaya
district['Meghalaya']='East Garo Hills|West Garo Hills|North Garo Hills|South Garo Hills|South West Garo Hills|East Jaintia Hills|West Jaintia Hills|East Khasi Hills|South West Khasi Hills|West Khasi Hills|Ri-Bhoi';
//Mizoram
district['Mizoram']='Aizawl|Champhai|Kolasib|Lawngtlai|Lunglei|Mamit|Saiha|Serchhip';
//Nagaland
district['Nagaland']='Dimapur|Kiphire|Kohima|Longleng|Mokokchung|Mon|Peren|Phek|Tuensang|Wokha|Zunheboto';
//New Delhi
district['New Delhi']='Central Delhi|East Delhi|Shahadara|New Delhi|North Delhi|North East Delhi|North West Delhi|South Delhi|South West Delhi|South East Delhi|West Delhi';
//Odisha
district['Odisha']='Angul|Balangir|Balasore|Bargarh (Baragarh)|Boudh�(Bauda)|Bhadrak|Cuttack|Debagarh (Deogarh)|Dhenkanal|Gajapati|Ganjam|Jagatsinghpur|Jajpur|Jharsuguda|Kalahandi|Kandhamal|Kendrapara|Kendujhar (Keonjhar)|Khordha|Koraput|Malkangiri|Mayurbhanj|Nabarangpur|Nayagarh|Nuapada|Puri|Rayagada|Sambalpur|Subarnapur (Sonepur)|Sundergarh';
//Punjab
district['Punjab']='Amritsar|Barnala|Bathinda|Fazilka|Faridkot|Fatehgarh Sahib|Firozpur|Gurdaspur|Hoshiarpur|Jalandhar|Kapurthala|Ludhiana|Mansa|Moga|Mohali|Muktsar|Pathankot|Patiala|Rupnagar|Sangrur|Shahid Bhagat Singh Nagar|Tarn Taran';
//Rajasthan
district['Rajasthan']='Ajmer|Alwar|Banswara|Baran|Barmer|Bharatpur|Bhilwara|Bikaner|Bundi|Chittaurgarh|Churu|Dausa|Dhaulpur|Dungarpur|Ganganagar|Hanumangarh|Jaipur|Jaisalmer|Jalor|Jhalawar|Jhunjhunun|Jodhpur|Karauli|KotaNagaurPali|Pratapgarh|Rajsamand|Sawai Madhopur|Sikar|Sirohi|Tonk|Udaipur';
//Sikkim
district['Sikkim']='East Sikkim|North Sikkim|South Sikkim|West Sikkim';
//Tamil Nadu
district['Tamil Nadu']='Ariyalur|Chennai|Coimbatore|Cuddalore|Dharmapuri|Dindigul|Erode|Kancheepuram|Kanniyakumari|Karur|Krishnagiri|Madurai|Nagapattinam|Namakkal|Perambalur|Pudukkottai|Ramanathapuram|Salem|Sivaganga|Thanjavur|The Nilgiris|Theni|Thiruvallur|Thiruvarur|Thoothukkudi|Tiruchirappalli|Tirunelveli|Tiruppur|Tiruvannamalai|Vellore|Viluppuram|Virudhunagar';
//Telangana
district['Telangana']='Adilabad|Hyderabad|Karimnagar|Khammam|Mahbubnagar|Medak|Nalgonda|Nizamabad|Rangareddy|Warangal';
//Tripura
district['Tripura']='Dhalai|Gomati|Khowai|North Tripura|Sepahijala|South Tripura|Unakoti|West Tripura';
//Uttar Pradesh
district['Uttar Pradesh']='Agra|Aligarh|Allahabad|Ambedkar Nagar|Amethi (Chhatrapati Shahuji Maharaj Nagar)|Auraiya|Azamgarh|Baghpat|Bahraich|Ballia|Balrampur|Banda|Barabanki|Bareilly|Basti|Bijnor|Budaun|Bulandshahar|Chandauli|Chitrakoot|Deoria|Etah|Etawah|Faizabad|Farrukhabad|Fatehpur|Firozabad|Gautam Buddha Nagar|Ghaziabad|Ghazipur|Gonda|Gorakhpur|Hamirpur|Hapur (Panchsheel Nagar district)|Hardoi|Hathras (Mahamaya Nagar)|Jalaun|Jaunpur|Jhansi|Jyotiba Phule Nagar|Kannauj|Kanpur|Dehat (Ramabai Nagar)|Kanpur Nagar|Kasganj (Kanshiram Nagar)|Kaushambi|Kheri|Kushinagar|Lalitpur|Lucknow|Maharajganj|Mahoba|Mainpuri|Mathura|Mau|Meerut|Mirzapur|Moradabad|Muzaffarnagar|Pilibhit|Pratapgarh|Rae Bareli|Rampur|Saharanpur|Sambhal (Bheem Nagar)|Sant Kabir Nagar|Sant Ravidas Nagar|Shahjahanpur|Shamli|Shrawasti|Siddharth Nagar|Sitapur|Sonbhadra|Sultanpur|Unnao|Varanasi';
//Uttarakhand
district['Uttarakhand']='Almora|Bageshwar|Chamoli|Champawat|Dehradun|Haridwar|Nainital|Pauri Garhwal|Pithoragarh|Rudraprayag|Tehri Garhwal|Udham Singh Nagar|Uttarkashi';
//West Bengal
district['West Bengal']='Alipurduar|Bankura|Barddhaman|Birbhum|Dakshin Dinajpur|Darjiling|Haora|Hugli|Jaipaiguri|Koch Bihar|Kolkata|Maldah|Murshidabad|Nadia|North Twenty Four Parganas|Paschim Medinipur|Purba Medinipur|Puruliya|South Twenty Four Parganas|Uttar Dinajpur';
//Andaman and Nicobar
district['Andaman and Nicobar']='Nicobar|North And Middle Andaman|South Andaman';
//Chandigarh
district['Chandigarh']='Chandigarh';
//Dadra and Nagar Haveli
district['Dadra and Nagar Haveli']='Dadra and Nagar Haveli';
//Daman and Diu
district['Daman and Diu']='Daman|Diu';
//Lakshadweep
district['Lakshadweep']='Kavaratti|Lakshadweep';
//Puducherry
district['Puducherry']='Karaikal|Mahe|Puducherry|Yanam';

/////////////////////////////////////////////////////////

var city = Object();
//Andhra Pradesh

city['Anantapur']='Agali|Amadagur|Amarapuram|Anantapur|Atmakur|Bathalapalle|Beluguppa|Bommanahal|Brahmasamudram|Bukkapatnam|Bukkarayasamudram|Chenne Kothapalle|Chilamathur|D.Hirehal|Dharmavaram|Gandlapenta|Garladinne|Gooty|Gorantla|Gudibanda|Gummagatta|Guntakal|Hindupur|Kadiri|Kalyandurg|Kambadur|Kanaganapalle|Kanekal|Kothacheruvu|Kudair|Kundurpi|Lepakshi|Madakasira|Mudigubba|Nallacheruvu|Nallamada|Nambulapulakunta|Narpala|Obuladevaracheruvu|Pamidi|Parigi|Peddapappur|Peddavadugur|Penu Konda|Putlur|Puttaparthi|Ramagiri|Raptadu|Rayadurg|Roddam|Rolla|Settur|Singanamala|Somandepalle|Tadimarri|Tadpatri|Talupula|Tanakal|Uravakonda|Vajrakarur|Vidapanakal|Yadiki|Yellanu';
city['Chittoor']='Baireddipalle|Bangarupalem|Buchinaidu khandriga|B.Kothakota|Chandragiri|Chinnagottigallu|Chittoor|Chowdepalle|Gangadhara nellore|Gangavaram|Gudipala|Gudupalle|Gurramkonda|Irala|K.V.B. Puram|Kalakada|Kalikiri|Kambhamvaripalle|Karvetinagar|Kuppam|Kurabalakota|Madanapalle|Mulakalacheruvu|Nagalapuram|Nagari|Narayanavanam|Nimmanapalle|Nindra|Pakala|Palamaner|Palasamudram|Peddamandyam|Peddapanjani|Peddathippasamudram|Penumuru|Pileru|Pitchatur|Pulicherla|Punganur|Puthalapattu|Puttur|Rama Chandrapuram|Ramakuppam|Ramasamudram|Renigunta|Rompicherla|Santhipuram|Satyavedu|Sodam|Somala|Srikalahasti|Srirangarajapuram|Thamballapalle|Thavanampalle|Thottambedu|Tirupati Rural|Tirupati Urban|Vadamalapeta|Varadaiahpalem|Vayalpadu|Vedurukuppam|Venkatagirikota|Vijayapuram|Yadamari|Yerpedu|Yerravaripalem';
city['East Godavari']='Amalapuram|Addateegala|Ainavilli|Alamuru|Allavaram|Ambajipeta|Anaparti|Annavaram|Atreyapuram|Biccavolu|Devipatnam|Gandepalle|Gangavaram|Gokavaram|Gollaprolu|I.Polavaram|Jaggampeta|Kadiam|Kajuluru|Kakinada (R)|Kakinada (U)|Kapileswarapuram|Karapa|Katrenikona|Kirlampudi|Korukonda|Kotananduru|Kothapalle|Kothapeta|Malikipuram|Mandapeta|Maredumilli|Mummidivaram|Mamidikuduru|P.Gannavaram|Pamarru|Pedapudi|Peddapuram|Pithapuram|Prathipadu|Rajahmundry (R)|Rajahmundry (U)|Rajanagaram|Rajavommangi|Ramachandrapuram|Rampachodavaram|Rangampeta|Ravulapalem|Rayavaram|Razole|Routhulapudi|Sakhinetipalli|Samalkota|Sankhavaram|Seethanagaram|Thallarevu|Thondangi|Tuni|Uppalaguptam|Y.Ramavaram|Yeleswaram';
city['Guntur']='Amaravati|Amruthalur|Achampet|Bapatla|Bhattiprolu|Bellamkonda|Bollapalle|Chebrole|Cherukupalle|Chilakaluripet|Duggirala|Dachepalle|Durgi|Edlapadu|Ipur|Guntur|Gurazala|karlapalem|Kakumanu|karempudi|Kollipara|Kolluru|Krosuru|Machavaram|Macherla|Mangalagiri|Medikonduru|Muppalla|Nadendla|Nagaram|Nekarikallu|Narasaraopet|Nizampatnam|Nuzendla|Pedakakani|Pedakurapadu|pedanandipadu|Phirangipuram|Piduguralla|Pittalavanipalem|Ponnur|Prathipadu|Rajupalem|Rentachintala|Repalle|Rompicherla|Sattenapalli|Savalyapuram|Tadikonda|Tenali|Tadepalle|Thulluru|Tsunduru|Vatticherukuru|Veldurthi|Vemuru|Vinukonda';
city['Kadapa']='Atlur|B.Kodur|Badvel|Brahmamgarimatham|Chakrayapet|Chapadu|Chennur|Chinnamandem|Chinthakomma Dinne|Chitvel|Duvvur|Galiveedu|Gopavaram|Jammalamadugu|Kadapa|Kalasapadu|Kamalapuram|Khajipet|Koduru|Kondapuram|Lakkireddipalle|Lingala|Muddanur|Mydukur|Mylavaram|Nandalur|Obulavaripalle|Peddamudium|Penagalur|Pendlimarri|Porumamilla|Proddatur|Pulivendula|Pullampeta|Rajampet|Rajupalem|Ramapuram|Rayachoti|Sambepalle|Sidhout|Simhadripuram|Sri Avadhuth Kasinayana|T. Sundupalle|Thondur|Vallur|Veeraballi|Veerapanayani Palle|Vempalle|Vemula|Vontimitta|Yerraguntla';
city['Krishna']='A.Konduru|Agiripalli|Avanigadda|Bantumilli|Bapulapadu|Challapalli|Chandarlapadu|Chatrai|G.Konduru|Gampalagudem|Gannavaram|Ghantasala|Gudivada|Gudlavalleru|Guduru|Ibrahimpatnam|Jaggaiahpet|Kaikaluru|Kalidindi|Kanchikacherla|Kankipadu|Koduru|Kruthivennu|Machilipatnam|Mandavalli|Mopidevi|Movva|Mudinepalli|Musunuru|Mylavaram|Nagayalanka|Nandigama|Nandivada|Nuzvid|Pamarru|Pamidimukkala|Pedana|Pedaparupudi|Penamaluru|Penuganchiprolu|Reddigudem|Thotlavalluru|Tiruvuru|Unguturu|Vatsavai|Veerullapadu|Vijayawada (R)|Vijayawada (U)|Vissannapeta|Vuyyuru';
city['Kurnool']='Adoni|Allagadda|Alur|Aspari|Atmakur|Banaganapalle|Bandi Atmakur|Bethamcherla|C.Belagal|Chagalamarri|Chippagiri|Devanakonda|Dhone alias Dronachalam|Dornipadu|Gadivemula|Gonegandla|Gospadu|Gudur|Halaharvi|Holagunda|Jupadu Bungalow|Kallur|Kodumuru|Koilkuntla|Kolimigundla|Kosigi|Kothapalle|Kowthalam|Krishnagiri|Kurnool|Maddikera (East)|Mahanandi|Mantralayam|Mayalur|Miduthur|Nandavaram|Nandikotkur|Nandyal|Orvakal|Owk|Pagidyala|Pamulapadu|Panyam|Pattikonda|Peapally|Pedda Kadubur|Rudravaram|Sanjamala|Sirvel|Srisailam|Tuggali|Uyyalawada|Veldurthi|Velgodu|Yemmiganur';
city['Nellore']='Allur|Ananthasagaram|Anumasamudrampeta|Atmakur|Balayapalle|Bhogolu|Buchireddipalem|Chejerla|Chillakur|Chittamur|Dagadarthi|Dakkili|Doravarisatram|Duttalur|Gudur|Indukurpet|Jaladanki|Kaligiri|Kaluvoya|Kavali|Kodavalur|Kondapuram|Kota|Kovur|Manubolu|Marripadu|Muthukur|Naidupeta|Nellore|Ozili|Pellakur|Podlakur|Rapur|Seetharamapuram|Sangam|Sullurpeta|Sydapuram|Tada|Thotapalligudur|Udayagiri|Vakadu|Varikuntapadu|Venkatachalam|Vinjamur|Venkatagiri|Vidavalur';
city['Prakasam']='Addanki|Ardhaveedu|Ballikuruva|Bestavaripeta|Chinaganjam|Chandrasekharapuram|Chimakurthi|Chirala|Cumbum|Darsi|Donakonda|Dornala|Giddaluru|Gudluru|Hanumanthunipadu|Inkollu|Janakavaram Panguluru|Kandukur|Karamchedu|Komarolu|Kanigiri|Konakanamitla|Kondapi|Korisapadu|Kothapatnam|Kurichedu|Lingasamudram|Maddipadu|Markapur|Marripudi|Martur|Mundlamuru|Naguluppalapadu|Ongole|Pamur|Parchur|Pedaaraveedu|Pedacherlopalle|Podili|Pullalacheruvu|Santhamaguluru|Santhanuthlapadu|Singarayakonda|Racherla|Tangutur|Tarlupadu|Thallur|Tripuranthakam|Ulavapadu|Veligandla|Vetapalem|Voletivaripalem|Yeddanapudi|Yerragondapalem|Zarugumilli';
city['Srikakulam']='Amadalavalasa|Bhamini|Burja|Etcherla|Ganguvari Sigadam|Hiramandalam|Ichchapuram|Jalumuru|Kalingapatnam|Kanchili|Kaviti|Kotabommali|Kothuru|Lakshminarasupeta|Laveru|Mandasa|Meliaputti|Nandigam|Narasannapeta|Palakonda|Palasa|Pathapatnam|Polaki|Ponduru|Rajam|Ranastalam|Regidi Amadalavalasa|Santhabommali|Santhakavati|Saravakota|Sarubujjili|Seethampeta|Sompeta|Srikakulam|Tekkali|Vajrapu Kotturu|Vangara|Veeraghattam';
city['Visakhapatnam']='Anakapalli|Anandapuram|Ananthagiri|Araku Valley|Atchutapuram|Bheemunipatnam|Butchayyapeta|Cheedikada|Chintapalle|Chodavaram|Devarapalle|Dumbriguda|G.Madugula|Gajuwaka|Golugonda|Gudem Kotha Veedhi|Hukumpeta|K.Kotapadu|Kasimkota|Kotauratla|Koyyuru|Madugula|Makavarapalem|Munagapaka|Munchingiputtu|Nakkapalli|Narsipatnam|Nathavaram|Paderu|Padmanabham|Paravada|Payakaraopeta|Pedabayalu|Pedagantyada|PendurthiRambilli|Ravikamatham|Rolugunta|S.Rayavaram|Sabbavaram|Visakhapatnam (R)|Visakhapatnam (U)|Yelamanchili';
city['Vizianagaram']='Bhogapuram|Badangi|Bondapalli|Balijipeta|Bobbili|Cheepurupalli|Dattirajeru|Denkada|Gajapathinagaram|Gantyada|Garividi|Gurla|Garugubilli|Gummalaxmipuram|Jami|Jiyyammavalasa|Komarada|Kothavalasa|Kurupam|Lakkavarapukota|Makkuva|Mentada|Merakamudidam|Nellimarla|Pachipenta|Parvathipuram|Pusapatirega|Ramabhadrapuram|Salur|Seethanagaram|Srungavarapukota|Therlam|Vepada|Vizianagaram';
city['West Godavari']='Attili|Akiveedu|Achanta|Buttayagudem|Bhimavaram|Bhimadole|Chagallu|Chintalapudi|Devarapalle|Denduluru|Dwarakatirumala|Eluru|Eluru (R)|Gopalapuram|Ganapavaram|Iragavaram|Jeelugumilli|Jangareddigudem|Kamavarapukota|Kovvur|Kalla|Koyyalagudem|Lingapalem|Mogalthur|Narasapuram|Nallajarla|Nidadavole|Nidamarru|Polavaram|Pedavegi|Pedapadu|Pentapadu|Peravali|Poduru|Palakoderu|Penumantra|Penugonda|Palakol|Thallapudi|T.Narasapuram|Tadepalligudem|Tanuku|Undrajavaram|Unguturu|Undi|Veeravasaram|Yelamanchili';

//assam
city['Barpeta']='Baghmarabazar|Baharihat|Pathsala|Barpeta|Barpetaroad|Bhella|Bhowanipur|Chenga|Howly|Jalah|Kalgachia|Kokilabari|Mayanbari|Nityananda|Patacharkuchi|Santinagar|Sarthebari|Sarupeta|Simlaguri|Sorbhog Bajali|ChakChaka|Gobardhana|Gomaphulbari|Mondia/Mandia|Pakabatbari|Rupshi|Sarukhetri';
city['Bongaigaon']='Srijan Gram|Abhayapuri|Manikpur|Borobazar|B.s. Gram|Baitamari|Bongaigaon|Bengtal|Boitamari|Boro Bazar|Sidli Chirang|Minikpur|B.s.gram.|Bengtol|Dangtol|Tapattary';
city['Cachar']='Banskandi|Barjalenga|Binnakandi|Borkhola|Kalain|Kaatigorah|Lakhiipur|Narsingpur|Palangghat|Rajabajar|Salchapra|Silchar|Sonai|Tapang|Udharbond';
city['Darrang']='Hatigarh|Harisinga|Lalpul Bazar|Duni|Atterikhat|Pachim-Mangaldoi|Khoirabari|Sipajhar|Dhula|Udalguri|Pathorighat|Kalaigaon|Bhakatpara|Deomornoi|Majbat|Panerihat|Bhairabkunda|Rowta|Purani|Tangla|Kopati|Orang|Dalgaon-Sialmari|Dimakuchi|Kharupetiaghat|Tangla|Bhargoan';
city['Dhemaji']='Bordoloni|Dhemaji|Gerukamukh|Jonai|Machkhowa|Murkak Chellak|Silapathar|Simen Chapori|Sissiborgaron';
city['Dhubri']='Agomoni|Salmara South|Dhubri|Debitala|Rupsi|Bagribari|Golakganj|Raniganj|Mankachar|Mahamaya|Debitola|Agamoni|Chapar Salkocha|Fekamari|Golakganj S.o.|Salkocha|Bilasipara|Rupshi	Bising|Jarua|Jamadarhat|Nayer Alga';
city['Dibrugarh']='Bamunbari|Barabruah|Barbam|Chabua|Dikom|Duliajan|Dibrugarh|Joypur|Khowang|Khiowang Ghat|Lahoal|Mohanbari|Naharkatia|Naholia|Namrup|Mohanbari|Parbatpur|Panitola|Rajgarh|Tengakhat|Tingkhong';
city['Goalpara']='Balijana|Dudhnoi|Dudhnai|Dudnai|Goalpara|Jaleswar|Kharmouza|Khuchdhowa|Kushdhowa|Krishnai|Lakhipur|Matia|Rangjuli';
city['Golaghat']='Bokakhat|Bkt|Gamariguri|Glt|Glgt|Golaghat Central|Sarupathar|Golaghat East|Golaghat West|Golaghat South|Golaghat North|Kokodonga|Morongi';
city['Hailakandi']='Algapur|Hailakandi|Katlicherra|Lala|South Hailakandi';
city['Jorhat']='Jorhat|Jorhat Central|Jorhat East|Jrt|Kaliapani|Majuli|North West Jorhat|Titabor|Ttb|Ujani Majuli';
city['Kamrup']='Rani|Dakhin|Sarubanswar|Mauza|Hajo|Goroimari|Mandia|Gmc|Sonapur Block|Gmc(North GH Circle)|Palashbari Circle|Rampur|Chamaria|Goreswar|Bezera|Kamalpur|Chhaygaonpantan|Chhaygaon|Rangia|Dakhin Sarubanswar(Rampur)|Boko|Rampur Block|Rampur|Goroimari|Goroimari Block|Bongaon(Boko)|Bongaon|Sualkuchi|Jharobari Block|Chandrapur|Greswar Block|Jalukbari Lac|Dakhin Sarubansar|Luki(Boko Block)|P.Chamaria|Chayani|Jharobari Block|Jharobari Block|Chamaria Block|Dakhinsarubanswar|Jharobariblock|Rani Block|Bihdia|Jajikona|Dimoria';
/*city['Anantapur']='';
city['Anantapur']='';
city['Anantapur']='';
city['Anantapur']='';
city['Anantapur']='';
city['Anantapur']='';
city['Anantapur']='';
city['Anantapur']='';
city['Anantapur']='';
city['Anantapur']='';
city['Anantapur']='';*/

//Arunachal Pradesh

//Chhattisgarh

//Goa

//Bihar
city['Araria']='';
city['Arwal']='';
city['Aurangabad']='';
city['Banka']='';
city['Begusarai']='';
city['Bhagalpur']='';
city['Bhojpur']='';
city['Buxar']='';
city['Darbhanga']='';
city['East Champaran']='';
city['Gaya']='';
city['Gopalganj']='';
city['Jamui']='';
city['Jehanabad']='';
city['Khagaria']='';
city['Kishanganj']='';
city['Kaimur']='';
city['Katihar']='';
city['Lakhisarai']='';
city['Madhubani']='';
city['Madhepura']='';
city['Muzaffarpur']='';
city['Nalanda']='';
city['Nawada']='';
city['Patna']='';
city['Purnia']='';
city['Rohtas']='';
city['Saharsa']='';
city['Samastipur']='';
city['Sheohar']='';
city['Sheikhpura']='';
city['Saran']='';
city['Sitamarhi']='';
city['Supaul']='';
city['Siwan']='';
city['Vaishali']='';
city['West Champaran']='';

//Gujarat

//Haryana

//Himachal Pradesh

//Jammu and Kashmir

//Jharkhand

//Karnataka

//Kerala

//Madhya Pradesh

//Maharashtra

//Manipur

//Meghalaya

//Mizoram

//Nagaland

//New Delhi

//Odisha

//Punjab

//Rajasthan

//Sikkim

//Tamil Nadu

//Telangana
city['Adilabad']='Adilabad|Asifabad|Bazarhathnoor|Bela|Bellampalle|Mudhole|Kasipet|Tamsi|Lokeshwara|Tiryani|Dilwarpur|Jainad|Nirmal|Wankidi|Laxmanchanda|Kagaznagar|Narnoor|Mamda|Rebbena|Indervelly|Khanapur|Tandur|Gudihathnoor|Kaddam|Ichoda|Utnoor|Nennel|Jainoor|Bheemini|Boath|Kerameri|Sirpur(T)|Neredigonda|Sirpur(U)|Talamadugu|Kouthala|Sarangapur|Jannaram|Bejjur|Kuntala|Dandepally|Dahegaon|Kubeer|Luxettipet|Vemanpally|Bhainsa|Mancherial|Kotapally|Tanoor|Mandamarri|Chennur|Jaipur';
city['Hyderabad']='Amberpet|Ameerpet|Asifnagar|Bahadurpura|Bandlaguda|Charminar|Golconda|Himayathnagar|Khairatabad|Maredpalle|Musheerabad|Nampally|Saidabad|Secunderabad|Shaikpet';
city['Karimnagar']='Bejjanki|Bheemadevarpalle|Boinpalle|Bommareddypalle|Chigurumamidi|Choppadandi|Dharmapuri|Elkathurthy|Ellanthakunta|Gambhiraopet|Husnabad|Jagtial|Julapalle|Kamalapur|Kamanpur|Kataram|Kathlapur|Kodimial|Koheda|Konaraopeta|Koratla|Mahadevpur|Malharrao|Mallial|Manakondur|Manthani|Medipalle|Metpalle|Mustabad|Mutharam(A)|Mutharam(N)|Odela|Peddapalle|Pegadapalle|Raikal|Ramagundam|Saidapur|Shankarapeta Kesavapatnam|Sultanabad|Thimmapur|Veenavanka|lgatoor';
city['Khammam']='Aswapuram|Aswaraopeta|Bayyaram|Bhadrachalam|Bonakal|Burgampadu|Chandrugonda|Cherla|Chintakani|Chintoor|Dammapeta|Dummugudem|Enkoor|Garla|Gundala|Julurpadu|Kalluru|Kamepalli|Karepalli|Konijerla|Kukkunoor|Kunavaram|Kusumanchi|Madhira|Manuguru|Mudigonda|Mulakalapalli|Nelakondapalli|Penuballi|Pinapaka|Sathupalli|Singareni|Tekulapalli|Thallada|Tirumalayapalem|Vararamachandrapuram|Velerupadu|Vemsoor|Venkatapuram|Wazedu|Wyra|Yerrupalem';
city['Mahboobnagar']='Achampet|Addakal|Alampur|Amangal|Amrabad|Atmakur|Balanagar|Balmoor|Bhoothpur|Bijinapalle|Bomraspeta|Chinna Chintakunta|Damaragidda|Devarakadra|Dhanwada|Doulatabad|Farooqnagar|Gadwal|Ghanpur|Ghattu|Gopalpeta|Hanwada|Ieeja|Itikyal|Jadcherla|Kalwakurthy|Keshampeta|Kodair|Kodangal|Koilkonda|Kollapur|Kondurg|Kosgi|Kothakota|Kothur|Lingal|Maddur|Madgul|Maganoor|Makhtal|Maldakal|Manopadu|Midjil|Nagarkurnool|Narayanpet|Narva|Nawabpet|Pebbair|Pedda Kothapalle|Peddamandadi|Tadoor|Talakondapalle|Telkapalle|Thimmajipeta|Uppunuthala|Utkoor|Vangoor|Veepangandla|Veldanda|Waddepalle|Wanaparthi';
city['Medak']='Anathasagar|Ausulpalle|Aurangabad[U]|Balanagar|Bhogada Bhoopathipur|Burugupalle|Byathole|Chityal|Fareedpur|Gangapur|Havelighanpur|Khazipalle|komtoor|Kuchanpalle|Lingasanpalle|Magta Bhoopathipur|Maqdumpur|Medak Nagar Panchayale|Mirgudpalle|Mudulwai|Muthaipalle|Nagapur|Pashapur|Pathur|Perur|Rajpet|Rajpalle|Rayalamadugu|Rayanpalle|Sardhana|Serikuchanpalle|Shalipet|Shamnapur|Suklapet|Thimmaipalle|Thogita|Venkatapur';
city['Nalgonda']='Anumula|Alair|Atmakur (S)|Atmakur (M)|Bhongir|Bibinagar|Bommala Ramaram|Chandur|Chandampet|Chilkur|Chityal|Chivemla|Chintapally|Choutuppal|Damercherla|Devarakonda|Garidepally|Gundala|Gurrampode|Gundlapally|Huzurnagar|Jajireddigudem|Kanagal|Kattangur|Kethepally|Kodad|Marriguda|Mattampally|Mellachervu|Miryalaguda|Mothey|Mothkur|Munagala|Munugode|Nakrekal|Nalgonda|Narketpally|Narayanapur|Nadigudem|Nampally|Neredcherla|Nidamanoor|Noothankal|P.A.Pally|Penpahad|Peddavoora|Pochampally|Rajapet|Ramannapeta|Saligowraram|Suryapet|Tirumalagiri|Thipparthy|Thungathurthy|Tripuraram|Turkapally|Valigonda|Vemulapally|Yadagirigutta';
city['Nizamabad']='Armur|Banswada|Balkonda|Bheemgal|Bhiknur|Bichkunda|Birkoor|Bodhan|Dhar Palle|Dichpalle|Domakonda|Gandhari|Jakranpalle|Jukkal|Kammar Palle|Kamareddy|Kotgiri|Lingampet|Makloor|Machareddy|Madnur|Mortad|Naga Reddipet|Nizamsagar|Navipet|Nandipet|Pitlam|Ranjal|Sadasivanagar|Sirkonda|Tadwai|Varni|Velpur|Yeda Palle|Yellareddy';
city['Rangareddy']='Balanagar|Bantwaram|Basheerabad|Chevella|Dharur|Doma|Gandeed|Ghatkesar|Hayathnagar|Ibrahimpatnam|Kandukur|Keesara|Kulkacharla|Maheswaram|Manchal|Malkajgiri|Marpalle|Medchal|Moinabad|Mominpet|Nawabpet|Pargi|Peddemul|Pudur|Qutubullapur|Rajendranagar|Saroornagar|Serilingampally|Shabad|Shamirpet|Shamshabad|Shankarpalle|Tandur|Uppal|Vicarabad|Yacharam|Yelal';
city['Warangal']='Aknoor|Ankushapur|Atmakur|Bachannapet|Bhupalpalle|Kothaguda|Chennaraopet|Cherial|Chityal|Devaruppula|Dharamsagar|Duggondi|Dwarakapet|Eturnagaram|Geesugonda|Ghanpur(Mulug)|Ghanpur (Station)|Govindaraopet|Hanamakonda|Hasanparthy|Jangaon|Kesamudram|Kodakandla|Kothaguda|Kuravi|Lingalaghanpur|Maheshwaram|Mangapet|Maripeda|Mogullapalle|Mulug|Nallabelly|Narmetta|Narsampet|Narsimhulapet|Nekkonda|Palakurthi|Pangidipalle|Parakal|Parvathagiri|Raghunathpalle|Raiparthy|Regonda|Shyampet|Tadvai|Venkatapur|Warangal|Wardhannapet|Zaffergadh';

//Tripura

//Uttar Pradesh

//Uttarakhand

//West Bengal

//Andaman and Nicobar

//Chandigarh

//Dadra and Nagar Haveli

//Daman and Diu

//Lakshadweep

//Puducherry








///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

/*function setRegions()
{
	for (regState in district)
		document.write('<option value="' + regState + '">' + regState + '</option>');
}

function set_country(oRegionSel, oCountrySel, oCity_StateSel)
{
	var countryArr;
	oCountrySel.length = 0;
	oCity_StateSel.length = 0;
	var regState = oRegionSel.options[oRegionSel.selectedIndex].text;
	if (district[regState])
	{
		oCountrySel.disabled = false;
		oCity_StateSel.disabled = true;
		oCountrySel.options[0] = new Option('Select District','');
		countryArr = district[regState].split('|');
		for (var i = 0; i < countryArr.length; i++)
			oCountrySel.options[i + 1] = new Option(countryArr[i], countryArr[i]);
		document.getElementById('txtregion').innerHTML = regState;
		document.getElementById('txtplacename').innerHTML = '';
	}
	else oCountrySel.disabled = true;
}

function set_city_state(oCountrySel, oCity_StateSel)
{
	var city_stateArr;
	oCity_StateSel.length = 0;
	var regDistrict = oCountrySel.options[oCountrySel.selectedIndex].text;
	if (city[regDistrict])
	{
		oCity_StateSel.disabled = false;
		oCity_StateSel.options[0] = new Option('Select City','');
		city_stateArr = city[regDistrict].split('|');
		for (var i = 0; i < city_stateArr.length; i++)
			oCity_StateSel.options[i+1] = new Option(city_stateArr[i],city_stateArr[i]);
		document.getElementById('txtplacename').innerHTML = regDistrict;
	}
	else oCity_StateSel.disabled = true;
}

function print_city_state(oCountrySel, oCity_StateSel)
{
	var regDistrict = oCountrySel.options[oCountrySel.selectedIndex].text;
	var regCity = oCity_StateSel.options[oCity_StateSel.selectedIndex].text;
	if (regCity && city[regDistrict].indexOf(regCity) != -1)
		document.getElementById('txtplacename').innerHTML = regCity + ', ' + regDistrict;
	else document.getElementById('txtplacename').innerHTML = regDistrict;
}*/