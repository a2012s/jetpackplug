// Top-level build file where you can add configuration options common to all sub-projects/modules.
buildscript {
    <#if includeKotlinSupport!false>ext.kotlin_version = '${kotlinVersion}'</#if>
    repositories {
        google()
        jcenter()
        maven { url "https://jitpack.io" }
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:${gradlePluginVersion}'
        <#if includeKotlinSupport!false>
            classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:${kotlinVersion}"
            classpath "org.jetbrains.kotlin:kotlin-android-extensions:${kotlinVersion}"
            classpath "org.jetbrains.kotlin:kotlin-allopen:${kotlinVersion}"
        </#if>
    }
}

allprojects {
    repositories {
        google()
        jcenter()
        maven { url "https://jitpack.io" }
        maven { url "https://raw.githubusercontent.com/Pgyer/mvn_repo_pgyer/master" }
        maven { url 'https://dl.bintray.com/jetbrains/anko' }
    }
}

task clean(type: Delete) {
    delete rootProject.buildDir
}


def propOrEmpty(String name) {
    return hasProperty(name) ? getProperty(name) : ''
}