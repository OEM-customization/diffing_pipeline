.class final Ljava/util/prefs/FileSystemPreferences$3;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->setupSystemRoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$3;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 7

    .prologue
    .line 161
    const-string/jumbo v3, "java.util.prefs.systemRoot"

    const-string/jumbo v4, "/etc/.java"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "systemPrefsDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, ".systemPrefs"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set4(Ljava/io/File;)Ljava/io/File;

    .line 165
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 169
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "java.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    const-string/jumbo v5, ".systemPrefs"

    .line 169
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set4(Ljava/io/File;)Ljava/io/File;

    .line 171
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 172
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 173
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    .line 174
    const-string/jumbo v4, "Created system preferences directory in java.home."

    .line 173
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 177
    :try_start_4f
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 178
    const/16 v4, 0x1ed

    .line 177
    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-wrap0(Ljava/lang/String;I)I
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5c} :catch_ff

    .line 188
    :cond_5c
    :goto_5c
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set1(Z)Z

    .line 189
    new-instance v3, Ljava/io/File;

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, ".system.lock"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    .line 191
    new-instance v3, Ljava/io/File;

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, ".systemRootModFile"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set5(Ljava/io/File;)Ljava/io/File;

    .line 192
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d9

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get2()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 195
    :try_start_94
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 196
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 197
    const/16 v4, 0x1a4

    .line 196
    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-wrap0(Ljava/lang/String;I)I

    move-result v1

    .line 198
    .local v1, "result":I
    if-eqz v1, :cond_d9

    .line 199
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Chmod failed on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 201
    const-string/jumbo v5, " Unix error code "

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_d9} :catch_f2

    .line 204
    .end local v1    # "result":I
    :cond_d9
    :goto_d9
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/prefs/FileSystemPreferences;->-set6(J)J

    .line 205
    const/4 v3, 0x0

    return-object v3

    .line 182
    :cond_e6
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string/jumbo v4, "Could not create system preferences directory. System preferences are unusable."

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 202
    :catch_f2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_d9

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :catch_ff
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_5c
.end method
