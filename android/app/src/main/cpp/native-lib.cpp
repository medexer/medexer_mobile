#include <jni.h>
#include <string>

// A simple function that returns "Hello from C++"
extern "C"
JNIEXPORT jstring JNICALL
Java_com_example_medexer_1mobile_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    std::string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}
