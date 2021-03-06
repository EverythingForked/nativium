// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

package com.nativium.core;

import java.util.concurrent.atomic.AtomicBoolean;

public abstract class ApplicationCore {
    public abstract double multiply(double value1, double value2);

    public abstract String getVersion();

    public static ApplicationCore shared()
    {
        return CppProxy.shared();
    }

    private static final class CppProxy extends ApplicationCore
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

        @Override
        public double multiply(double value1, double value2)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_multiply(this.nativeRef, value1, value2);
        }
        private native double native_multiply(long _nativeRef, double value1, double value2);

        @Override
        public String getVersion()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getVersion(this.nativeRef);
        }
        private native String native_getVersion(long _nativeRef);

        public static native ApplicationCore shared();
    }
}
