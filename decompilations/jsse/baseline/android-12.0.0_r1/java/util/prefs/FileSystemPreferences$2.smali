.class Ljava/util/prefs/FileSystemPreferences$2;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->setupSystemRoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 158
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 6

    .line 160
    nop

    .line 161
    const-string v0, "java.util.prefs.systemRoot"

    const-string v1, "/etc/.java"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "systemPrefsDirName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, ".systemPrefs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->access$602(Ljava/io/File;)Ljava/io/File;

    .line 165
    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$600()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_61

    .line 168
    new-instance v1, Ljava/io/File;

    .line 169
    const-string v3, "java.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    # setter for: Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->access$602(Ljava/io/File;)Ljava/io/File;

    .line 171
    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$600()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_61

    .line 172
    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$600()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 173
    # invokes: Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$200()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "Created system preferences directory in java.home."

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 177
    :try_start_48
    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$600()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ed

    # invokes: Ljava/util/prefs/FileSystemPreferences;->chmod(Ljava/lang/String;I)I
    invoke-static {v1, v2}, Ljava/util/prefs/FileSystemPreferences;->access$100(Ljava/lang/String;I)I
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_55} :catch_56

    goto :goto_57

    .line 179
    :catch_56
    move-exception v1

    .line 180
    :goto_57
    goto :goto_61

    .line 182
    :cond_58
    # invokes: Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$200()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "Could not create system preferences directory. System preferences are unusable."

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 188
    :cond_61
    :goto_61
    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$600()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    # setter for: Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->access$702(Z)Z

    .line 189
    new-instance v1, Ljava/io/File;

    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$600()Ljava/io/File;

    move-result-object v2

    const-string v3, ".system.lock"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    .line 190
    new-instance v1, Ljava/io/File;

    .line 191
    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$600()Ljava/io/File;

    move-result-object v2

    const-string v3, ".systemRootModFile"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    # setter for: Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->access$802(Ljava/io/File;)Ljava/io/File;

    .line 192
    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$800()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e3

    # getter for: Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$700()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 195
    :try_start_97
    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$800()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 196
    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$800()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    # invokes: Ljava/util/prefs/FileSystemPreferences;->chmod(Ljava/lang/String;I)I
    invoke-static {v1, v2}, Ljava/util/prefs/FileSystemPreferences;->access$100(Ljava/lang/String;I)I

    move-result v1

    .line 198
    .local v1, "result":I
    if-eqz v1, :cond_d6

    .line 199
    # invokes: Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$200()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chmod failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$800()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Unix error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_d6} :catch_d7

    .line 203
    .end local v1    # "result":I
    :cond_d6
    goto :goto_e3

    .line 202
    :catch_d7
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    # invokes: Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$200()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 204
    .end local v1    # "e":Ljava/io/IOException;
    :cond_e3
    :goto_e3
    # getter for: Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$800()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    # setter for: Ljava/util/prefs/FileSystemPreferences;->systemRootModTime:J
    invoke-static {v1, v2}, Ljava/util/prefs/FileSystemPreferences;->access$902(J)J

    .line 205
    const/4 v1, 0x0

    return-object v1
.end method
