import SwiftUI

// نموذج بيانات للمواد
struct Subject: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let price: String
}

// نموذج بيانات للكليات
struct College: Identifiable {
    let id = UUID()
    let name: String
    let subjects: [Subject]
}

// نموذج بيانات للجامعات
struct University: Identifiable {
    let id = UUID()
    let name: String
    let colleges: [College]
    let logo: String
}

// بيانات الجامعات
let universitiesData: [University] = [
    University(
        name: "جامعة القصيم",
        colleges: [
            College(name: "كلية التمريض", subjects: [
                Subject(name: "تمريض 101", description: "مقدمة في التمريض", price: "10 ريال"),
                Subject(name: "تمريض 202", description: "العناية المركزة", price: "15 ريال")
            ]),
            College(name: "كلية الحاسب", subjects: [
                Subject(name: "برمجة 101", description: "مقدمة في البرمجة", price: "12 ريال"),
                Subject(name: "شبكات 201", description: "أساسيات الشبكات", price: "18 ريال")
            ]),
            
            College(name: "كليةالعلوم", subjects: [
                Subject(name: "التفاضل والتكامل  101", description: "شرح الاسس والتكامل", price: "10 ريال"),
                               Subject(name: "التفاضل والتكامل 2", description: "شرح الاسس والتفاضل", price: "15 ريال")
                
        
         ]),
            College(name: "كلية الادارة والاقتصاد", subjects: [
                        
                Subject(name:"الاداره العامة" ,description: "مقدمة في الاداره العامه", price: "15 ريال")
            ]),
            
        ],
        
                    logo: "qassimLogo"
    ),
    University(
        name: "جامعة الملك سعود",
        colleges: [
            College(name: "كلية الطب", subjects: [
                Subject(name: "تشريح 101", description: "مبادئ التشريح", price: "20 ريال"),
                Subject(name: "فسيولوجيا 201", description: "أساسيات الفسيولوجيا", price: "25 ريال")
            ]),
            College(name: "كلية الصيدلة", subjects: [
                Subject(name: "كيمياء دوائية", description: "مقدمة في الكيمياء الدوائية", price: "22 ريال"),
                Subject(name: "صيدلة سريرية", description: "أساسيات الصيدلة السريرية", price: "28 ريال")
            ])
        ],
        logo: "ksuLogo"
    ),

    University(
        name: "جامعة الملك عبدالعزيز",
        colleges: [
            College(name: "كلية الطب", subjects: [
                Subject(name: "تشريح 101", description: "مبادئ التشريح", price: "20 ريال"),
                Subject(name: "فسيولوجيا 201", description: "أساسيات الفسيولوجيا", price: "25 ريال")
            ]),
            College(name: "كلية الصيدلة", subjects: [
                Subject(name: "كيمياء دوائية", description: "مقدمة في الكيمياء الدوائية", price: "22 ريال"),
                Subject(name: "صيدلة سريرية", description: "أساسيات الصيدلة السريرية", 
                        price: "28 ريال"),
            ]),

            College(name: "كلية الادارة والاقتصاد", subjects: [
                        
                Subject(name:"الاداره العامة" ,description: "مقدمة في الاداره العامه", price: "15 ريال")
            ]),
            
        ],
        
        logo:"ksuLogo"
    ),

    University(
        name: "جامعة الملك خالد",
        colleges: [
            College(name: "كلية الطب", subjects: [
                Subject(name: "تشريح 101", description: "مبادئ التشريح", price: "20 ريال"),
                Subject(name: "فسيولوجيا 201", description: "أساسيات الفسيولوجيا", price: "25 ريال")
            ]),
            College(name: "كلية الصيدلة", subjects: [
                Subject(name: "كيمياء دوائية", description: "مقدمة في الكيمياء الدوائية", price: "22 ريال"),
                Subject(name: "صيدلة سريرية", description: "أساسيات الصيدلة السريرية", price: "28 ريال")
            ])
        ],
        logo: "ksuLogo"
    ),

    University(
        name: "جامعة الامام محمد بن سعود",
        colleges: [
            College(name: "كلية الطب", subjects: [
                Subject(name: "تشريح 101", description: "مبادئ التشريح", price: "20 ريال"),
                Subject(name: "فسيولوجيا 201", description: "أساسيات الفسيولوجيا", price: "25 ريال")
            ]),
            College(name: "كلية الصيدلة", subjects: [
                Subject(name: "كيمياء دوائية", description: "مقدمة في الكيمياء الدوائية", price: "22 ريال"),
                Subject(name: "صيدلة سريرية", description: "أساسيات الصيدلة السريرية", price: "28 ريال")
            ])
        ],
        logo: "ksuLogo"
    ),

    University(
        name: "جامعة الملك سعود",
        colleges: [
            College(name: "كلية الطب", subjects: [
                Subject(name: "تشريح 101", description: "مبادئ التشريح", price: "20 ريال"),
                Subject(name: "فسيولوجيا 201", description: "أساسيات الفسيولوجيا", price: "25 ريال")
            ]),
            College(name: "كلية الصيدلة", subjects: [
                Subject(name: "كيمياء دوائية", description: "مقدمة في الكيمياء الدوائية", price: "22 ريال"),
                Subject(name: "صيدلة سريرية", description: "أساسيات الصيدلة السريرية", price: "28 ريال")
            ])
        ],
        logo: "ksuLogo"
    )

    
    // إضافة المزيد من الجامعات والكليات والمواد حسب الحاجة
]

struct ContentView: View {
    var body: some View {
        TabView {
            UniversitiesView()
                .tabItem {
                    Image(systemName: "building.columns")
                    Text("الجامعات")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("البحث")
                }
            
            SubscriptionsView()
                .tabItem {
                    Image(systemName: "star")
                    Text("الاشتراكات")
                }
            
            DownloadsView()
                .tabItem {
                    Image(systemName: "arrow.down.circle")
                    Text("التنزيلات")
                }
            
            UserProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("المستخدم")
                }
        }
    }
}

// شاشة عرض الجامعات
struct UniversitiesView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 20) {
                        ForEach(universitiesData) { university in
                            NavigationLink(destination: CollegesView(university: university)) {
                                VStack {
                                    Image(university.logo)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        .clipShape(Circle())
                                    
                                    Text(university.name)
                                        .font(.title3)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 150)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.blue, lineWidth: 2))
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("الجامعات")
        }
    }
}

// شاشة عرض الكليات
struct CollegesView: View {
    let university: University
    
    var body: some View {
        List(university.colleges) { college in
            NavigationLink(destination: MaterialsView(college: college)) {
                Text(college.name)
            }
        }
        .navigationTitle(university.name)
    }
}

// شاشة عرض المواد
struct MaterialsView: View {
    let college: College
    
    var body: some View {
        List(college.subjects) { subject in
            VStack(alignment: .leading, spacing: 5) {
                Text(subject.name)
                    .font(.headline)
                Text(subject.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(subject.price)
                    .font(.caption)
                    .foregroundColor(.blue)
            }
            .padding()
        }
        .navigationTitle(college.name)
    }
}

// شاشة البحث
struct SearchView: View {
    @State private var query = ""
    @State private var filteredUniversities: [University] = universitiesData
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("ابحث عن جامعة أو كلية", text: $query, onCommit: filterResults)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                List(filteredUniversities) { university in
                    Section(header: Text(university.name)) {
                        ForEach(university.colleges.filter { query.isEmpty || $0.name.contains(query) }, id: \.id) { college in
                            NavigationLink(destination: MaterialsView(college: college)) {
                                Text(college.name)
                            }
                        }
                    }
                }
            }
            .navigationTitle("البحث")
        }
    }
    
    func filterResults() {
        if query.isEmpty {
            filteredUniversities = universitiesData
        } else {
            filteredUniversities = universitiesData.filter { university in
                university.name.contains(query) || university.colleges.contains(where: { $0.name.contains(query) })
            }
        }
    }
}

// باقي الشاشات (الاشتراكات، التنزيلات، المستخدم)
struct SubscriptionsView: View {
    var body: some View {
        Text("صفحة الاشتراكات")
            .font(.title)
            .navigationTitle("الاشتراكات")
    }
}

struct DownloadsView: View {
    var body: some View {
        Text("صفحة التنزيلات")
            .font(.title)
            .navigationTitle("التنزيلات")
    }
}

struct UserProfileView: View {
    @State private var username = "المستخدم"
    @State private var profileImage = "person.crop.circle"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: profileImage)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                
                Text(username)
                    .font(.title)
                    .fontWeight(.bold)
                
                Button("تسجيل الخروج") {
                    print("تم تسجيل الخروج")
                }
                .foregroundColor(.red)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                
                Spacer()
            }
            .padding()
            .navigationTitle("حسابي")
        }
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

