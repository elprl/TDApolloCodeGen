//
//  ContentView.swift
//  ApolloTestHarness
//
//  Created by Paul Leo on 01/11/2023.
//

import SwiftUI
import ApolloCodegenLib

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Generates Swift code for TDCodeReview")
            Button {
                Task {
                    await buildCode()
                }
            } label: {
                Text("Generate Code")
            }
        }
        .padding()
    }
    
    func buildCode() async {
        do {
            let configuration = ApolloCodegenConfiguration(
                schemaNamespace: "TDGitGraphQL",
                input: ApolloCodegenConfiguration.FileInput(
                    schemaSearchPaths: ["/Volumes/SabrentRocket4_1TB/Work/TapDigital/ApolloCodeGen/ApolloTestHarness/Resources/*.graphqls"],
                    operationSearchPaths: ["/Volumes/SabrentRocket4_1TB/Work/TapDigital/ApolloCodeGen/ApolloTestHarness/Resources/*.graphql"]
                ),
                output: ApolloCodegenConfiguration.FileOutput(
                    schemaTypes: ApolloCodegenConfiguration.SchemaTypesFileOutput(
                        path: "/Volumes/SabrentRocket4_1TB/Work/TapDigital/ApolloCodeGen/generated/schema/",
                        moduleType: .swiftPackageManager
                    ),
                    operations: .inSchemaModule,
                    testMocks: .none
                ),
                options: ApolloCodegenConfiguration.OutputOptions(
                    selectionSetInitializers: .all,
                    pruneGeneratedFiles: false,
                    markOperationDefinitionsAsFinal: true
                )
            )
            try await ApolloCodegen.build(with: configuration)
        }
        catch {
            print(error.localizedDescription)
        }
    }
}

#Preview {
    ContentView()
}
