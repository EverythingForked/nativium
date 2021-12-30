// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

package com.nativium.helper;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class StringHelper {
    public static String trim(String value)
    {
        return CppProxy.trim(value);
    }

    public static String leftTrim(String value)
    {
        return CppProxy.leftTrim(value);
    }

    public static String rightTrim(String value)
    {
        return CppProxy.rightTrim(value);
    }

    public static String toLower(String value)
    {
        return CppProxy.toLower(value);
    }

    public static String toUpper(String value)
    {
        return CppProxy.toUpper(value);
    }

    public static ArrayList<String> split(String text, String sep, boolean trimEmpty)
    {
        return CppProxy.split(text,
                              sep,
                              trimEmpty);
    }

    private static final class CppProxy extends StringHelper
    {
        private final long nativeRef;
        private final AtomicBoolean destroyed = new AtomicBoolean(false);

        private CppProxy(long nativeRef)
        {
            if (nativeRef == 0) throw new RuntimeException("nativeRef is zero");
            this.nativeRef = nativeRef;
        }

        private native void nativeDestroy(long nativeRef);
        public void _djinni_private_destroy()
        {
            boolean destroyed = this.destroyed.getAndSet(true);
            if (!destroyed) nativeDestroy(this.nativeRef);
        }
        @SuppressWarnings("deprecation")
        protected void finalize() throws java.lang.Throwable
        {
            _djinni_private_destroy();
            super.finalize();
        }

        public static native String trim(String value);

        public static native String leftTrim(String value);

        public static native String rightTrim(String value);

        public static native String toLower(String value);

        public static native String toUpper(String value);

        public static native ArrayList<String> split(String text, String sep, boolean trimEmpty);
    }
}
