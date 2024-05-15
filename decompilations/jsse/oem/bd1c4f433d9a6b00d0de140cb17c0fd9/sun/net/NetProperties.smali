.class public Lsun/net/NetProperties;
.super Ljava/lang/Object;
.source "NetProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/NetProperties$1;
    }
.end annotation


# static fields
.field private static props:Ljava/util/Properties;


# direct methods
.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Lsun/net/NetProperties;->loadDefaultProperties()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    .line 45
    new-instance v0, Lsun/net/NetProperties$1;

    invoke-direct {v0}, Lsun/net/NetProperties$1;-><init>()V

    .line 44
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v3, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "def":Ljava/lang/String;
    :try_start_6
    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_9} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v3

    return-object v3

    .line 94
    :catch_b
    move-exception v2

    .line 96
    :goto_c
    const/4 v3, 0x0

    return-object v3

    .line 93
    :catch_e
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_c
.end method

.method public static getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 141
    const/4 v3, 0x0

    .line 144
    .local v3, "val":Ljava/lang/String;
    :try_start_2
    sget-object v4, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    invoke-virtual {v4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_b} :catch_17

    move-result-object v3

    .line 149
    .end local v3    # "val":Ljava/lang/String;
    :goto_c
    if-eqz v3, :cond_14

    .line 151
    :try_start_e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v4

    return-object v4

    .line 152
    :catch_13
    move-exception v2

    .line 155
    :cond_14
    return-object v5

    .line 145
    .restart local v3    # "val":Ljava/lang/String;
    :catch_15
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_c

    .line 146
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_17
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_c
.end method

.method public static getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defval"    # I

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 115
    .local v3, "val":Ljava/lang/String;
    :try_start_1
    sget-object v4, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    invoke-virtual {v4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_a} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_1b

    move-result-object v3

    .line 120
    .end local v3    # "val":Ljava/lang/String;
    :goto_b
    if-eqz v3, :cond_13

    .line 122
    :try_start_d
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v4

    return-object v4

    .line 123
    :catch_12
    move-exception v2

    .line 126
    :cond_13
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v4

    .line 116
    .restart local v3    # "val":Ljava/lang/String;
    :catch_19
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_b

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1b
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_b
.end method

.method private static loadDefaultProperties()V
    .registers 8

    .prologue
    .line 60
    const-string/jumbo v6, "java.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "fname":Ljava/lang/String;
    if-nez v4, :cond_12

    .line 62
    new-instance v6, Ljava/lang/Error;

    const-string/jumbo v7, "Can\'t find java.home ??"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6

    .line 65
    :cond_12
    :try_start_12
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "lib"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v6, "net.properties"

    invoke-direct {v3, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .end local v2    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 68
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 69
    .local v5, "in":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v0, "bin":Ljava/io/BufferedInputStream;
    sget-object v6, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    invoke-virtual {v6, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_38} :catch_39

    .line 76
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    :goto_38
    return-void

    .line 72
    :catch_39
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_38
.end method
