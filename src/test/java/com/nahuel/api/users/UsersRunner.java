package com.nahuel.api.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("get-users", "create-user", "update-user", "chaining", "data-driven")
                .relativeTo(getClass());
    }
}
