.class Ljava/util/prefs/FileSystemPreferencesFactory;
.super Ljava/lang/Object;
.source "FileSystemPreferencesFactory.java"

# interfaces
.implements Ljava/util/prefs/PreferencesFactory;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public systemRoot()Ljava/util/prefs/Preferences;
    .registers 2

    .prologue
    .line 45
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getSystemRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public userRoot()Ljava/util/prefs/Preferences;
    .registers 2

    .prologue
    .line 41
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getUserRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method
