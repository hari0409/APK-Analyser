package com.afwsamples.testdpc.policy.keyguard;
abstract class LockScreenPolicyFragment$Keys {
    static final String KEYGUARD_DISABLE_FACE = "keyguard_disable_face";
    static final String KEYGUARD_DISABLE_FINGERPRINT = "keyguard_disable_fingerprint";
    static final String KEYGUARD_DISABLE_IRIS = "keyguard_disable_iris";
    static final String KEYGUARD_DISABLE_REMOTE_INPUT = "keyguard_disable_remote_input";
    static final String KEYGUARD_DISABLE_SECURE_CAMERA = "keyguard_disable_secure_camera";
    static final String KEYGUARD_DISABLE_SECURE_NOTIFICATIONS = "keyguard_disable_secure_notifications";
    static final String KEYGUARD_DISABLE_TRUST_AGENTS = "keyguard_disable_trust_agents";
    static final String KEYGUARD_DISABLE_UNREDACTED_NOTIFICATIONS = "keyguard_disable_unredacted_notifications";
    static final String LOCK_SCREEN_MESSAGE = "key_lock_screen_message";
    static final String MAX_FAILS_BEFORE_WIPE = "key_max_fails_before_wipe";
    static final String MAX_FAILS_BEFORE_WIPE_ALL = "key_max_fails_before_wipe_aggregate";
    static final String MAX_TIME_SCREEN_LOCK = "key_max_time_screen_lock";
    static final String MAX_TIME_SCREEN_LOCK_ALL = "key_max_time_screen_lock_aggregate";
    static final java.util.Set NOT_APPLICABLE_TO_PARENT = None;
    static final String SET_TRUST_AGENT_CONFIG = "key_set_trust_agent_config";
    static final String STRONG_AUTH_TIMEOUT = "key_strong_auth_timeout";

    static LockScreenPolicyFragment$Keys()
    {
        java.util.List v1_1 = new String[1];
        v1_1[0] = "keyguard_disable_unredacted_notifications";
        com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment$Keys.NOT_APPLICABLE_TO_PARENT = new java.util.HashSet(java.util.Arrays.asList(v1_1));
        return;
    }

    LockScreenPolicyFragment$Keys()
    {
        return;
    }
}
