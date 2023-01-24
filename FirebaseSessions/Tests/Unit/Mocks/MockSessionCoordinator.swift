//
// Copyright 2022 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import XCTest
@testable import FirebaseSessions

class MockSessionCoordinator: SessionCoordinatorProtocol {
  var loggedEvent: FirebaseSessions.SessionStartEvent?

  func attemptLoggingSessionStart(event: FirebaseSessions.SessionStartEvent,
                                  callback: @escaping (Result<Void, FirebaseSessionsError>)
                                    -> Void) {
    loggedEvent = event

    // Currently there aren't any behaviors predicated on this
    callback(.success(()))
  }
}
