//
//  SettingsView.swift
//  Fructus
//
//  Created by Ashish Yadav on 24/04/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTY
    @Environment(\.presentationMode) var presentationMode
    //in this instance we are going to view's presentation mode from the environment
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                        Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }//: HStack
                    } label: {
                        SettingsLabelView(labelText: "Fructus",
                                          labelImage: "info.circle")
                    }

                    //MARK: - SECTION 2
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, You can restart the application by toggle the switch in the box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                                
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,
                                                            style: .continuous))
                        )
                        
                    } label: {
                        SettingsLabelView(labelText: "Customization",
                                          labelImage: "paintbrush")
                    }

                    
                    //MARK: - SECTION 3
                    GroupBox {
                        SettingsRowView(name: "Developer",
                                        content: "Ashish")
                        SettingsRowView(name: "Designer",
                                        content: "Sumit")
                        SettingsRowView(name: "Compatibility",
                                        content: "iOS 14")
                        SettingsRowView(name: "Website",
                                        linkLabel: "@ashishFB",
                                        linkDestination: "www.fb.com")
                        SettingsRowView(name: "Twitter",
                                        linkLabel: "@ashishTW",
                                        linkDestination: "www.Twitter.com")
                        SettingsRowView(name: "SwiftUI",
                                        content: "2.0")
                        SettingsRowView(name: "Version",
                                        content: "1.0.0")
                        
                    } label: {
                        SettingsLabelView(labelText: "Application",
                                          labelImage: "apps.iphone")
                    }

                    
                } //: VStack
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                })
                .padding()
            } //: ScrollView
        } //: NavigationView
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
