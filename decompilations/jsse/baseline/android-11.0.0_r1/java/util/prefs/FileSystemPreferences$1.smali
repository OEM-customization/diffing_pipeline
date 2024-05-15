.class Ljava/util/prefs/FileSystemPreferences$1;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->setupUserRoot()V
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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 2

    .line 97
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 6

    .line 99
    new-instance v0, Ljava/io/File;

    .line 101
    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v2, "java.util.prefs.userRoot"

    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".java/.userPrefs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    # setter for: Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;
    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->access$002(Ljava/io/File;)Ljava/io/File;

    .line 103
    # getter for: Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$000()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_55

    .line 104
    # getter for: Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$000()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 106
    :try_start_2a
    # getter for: Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$000()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c0

    # invokes: Ljava/util/prefs/FileSystemPreferences;->chmod(Ljava/lang/String;I)I
    invoke-static {v0, v1}, Ljava/util/prefs/FileSystemPreferences;->access$100(Ljava/lang/String;I)I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_37} :catch_38

    .line 110
    goto :goto_42

    .line 107
    :catch_38
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    # invokes: Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$200()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "Could not change permissions on userRoot directory. "

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :goto_42
    # invokes: Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$200()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    const-string v1, "Created user preferences directory."

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    goto :goto_55

    .line 114
    :cond_4c
    # invokes: Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$200()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    const-string v1, "Couldn\'t create user preferences directory. User preferences are unusable."

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 117
    :cond_55
    :goto_55
    # getter for: Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$000()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    # setter for: Ljava/util/prefs/FileSystemPreferences;->isUserRootWritable:Z
    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->access$302(Z)Z

    .line 118
    const-string v0, "user.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "USER_NAME":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    # getter for: Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$000()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".user.lock."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    .line 120
    new-instance v1, Ljava/io/File;

    # getter for: Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$000()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".userRootModFile."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # setter for: Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->access$402(Ljava/io/File;)Ljava/io/File;

    .line 122
    # getter for: Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$400()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f5

    .line 125
    :try_start_a9
    # getter for: Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$400()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 127
    # getter for: Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$400()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x180

    # invokes: Ljava/util/prefs/FileSystemPreferences;->chmod(Ljava/lang/String;I)I
    invoke-static {v1, v2}, Ljava/util/prefs/FileSystemPreferences;->access$100(Ljava/lang/String;I)I

    move-result v1

    .line 129
    .local v1, "result":I
    if-eqz v1, :cond_e8

    .line 130
    # invokes: Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$200()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem creating userRoot mod file. Chmod failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    # getter for: Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$400()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Unix error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_e8} :catch_e9

    .line 136
    .end local v1    # "result":I
    :cond_e8
    goto :goto_f5

    .line 134
    :catch_e9
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    # invokes: Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$200()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    :cond_f5
    :goto_f5
    # getter for: Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->access$400()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    # setter for: Ljava/util/prefs/FileSystemPreferences;->userRootModTime:J
    invoke-static {v1, v2}, Ljava/util/prefs/FileSystemPreferences;->access$502(J)J

    .line 138
    const/4 v1, 0x0

    return-object v1
.end method
