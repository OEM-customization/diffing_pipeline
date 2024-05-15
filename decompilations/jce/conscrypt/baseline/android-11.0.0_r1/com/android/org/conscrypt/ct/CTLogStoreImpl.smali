.class public Lcom/android/org/conscrypt/ct/CTLogStoreImpl;
.super Ljava/lang/Object;
.source "CTLogStoreImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/ct/CTLogStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    }
.end annotation


# static fields
.field private static final blacklist HEX_DIGITS:[C

.field private static final blacklist US_ASCII:Ljava/nio/charset/Charset;

.field private static volatile blacklist defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

.field private static final blacklist defaultSystemLogDir:Ljava/io/File;

.field private static final blacklist defaultUserLogDir:Ljava/io/File;


# instance fields
.field private blacklist fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

.field private blacklist logCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/org/conscrypt/ct/CTLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist missingLogCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist systemLogDir:Ljava/io/File;

.field private blacklist userLogDir:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 44
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->US_ASCII:Ljava/nio/charset/Charset;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 72
    const-string v0, "ANDROID_DATA"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "ANDROID_DATA":Ljava/lang/String;
    const-string v1, "ANDROID_ROOT"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "ANDROID_ROOT":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/misc/keychain/trusted_ct_logs/current/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultUserLogDir:Ljava/io/File;

    .line 75
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/etc/security/ct_known_logs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultSystemLogDir:Ljava/io/File;

    .line 244
    .end local v0    # "ANDROID_DATA":Ljava/lang/String;
    .end local v1    # "ANDROID_ROOT":Ljava/lang/String;
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_52

    sput-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    return-void

    nop

    :array_52
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 86
    sget-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultUserLogDir:Ljava/io/File;

    sget-object v1, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultSystemLogDir:Ljava/io/File;

    .line 88
    invoke-static {}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->getDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v2

    .line 86
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;-><init>(Ljava/io/File;Ljava/io/File;[Lcom/android/org/conscrypt/ct/CTLogInfo;)V

    .line 89
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Ljava/io/File;[Lcom/android/org/conscrypt/ct/CTLogInfo;)V
    .registers 5
    .param p1, "userLogDir"    # Ljava/io/File;
    .param p2, "systemLogDir"    # Ljava/io/File;
    .param p3, "fallbackLogs"    # [Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    .line 92
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->userLogDir:Ljava/io/File;

    .line 93
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->systemLogDir:Ljava/io/File;

    .line 94
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 95
    return-void
.end method

.method private static blacklist createDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 7

    .line 153
    const/16 v0, 0x8

    new-array v1, v0, [Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 154
    .local v1, "logs":[Lcom/android/org/conscrypt/ct/CTLogInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_29

    .line 156
    :try_start_7
    sget-object v3, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_KEYS:[[B

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/org/conscrypt/InternalUtil;->logKeyToPublicKey([B)Ljava/security/PublicKey;

    move-result-object v3

    .line 158
    .local v3, "key":Ljava/security/PublicKey;
    new-instance v4, Lcom/android/org/conscrypt/ct/CTLogInfo;

    sget-object v5, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_DESCRIPTIONS:[Ljava/lang/String;

    aget-object v5, v5, v2

    sget-object v6, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_URLS:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v4, v3, v5, v6}, Lcom/android/org/conscrypt/ct/CTLogInfo;-><init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_1e} :catch_22

    .line 163
    .end local v3    # "key":Ljava/security/PublicKey;
    nop

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 161
    :catch_22
    move-exception v0

    .line 162
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 166
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "i":I
    :cond_29
    sput-object v1, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 167
    return-object v1
.end method

.method private blacklist findKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 9
    .param p1, "logId"    # [B

    .line 119
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->hexEncode([B)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "filename":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->userLogDir:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v1
    :try_end_10
    .catch Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException; {:try_start_5 .. :try_end_10} :catch_40
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_10} :catch_11

    return-object v1

    .line 124
    :catch_11
    move-exception v2

    .line 127
    :try_start_12
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->systemLogDir:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v1
    :try_end_1d
    .catch Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException; {:try_start_12 .. :try_end_1d} :catch_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1d} :catch_1e

    return-object v1

    .line 130
    :catch_1e
    move-exception v2

    .line 133
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->userLogDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 134
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_3d

    aget-object v5, v2, v4

    .line 135
    .local v5, "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    invoke-virtual {v5}, Lcom/android/org/conscrypt/ct/CTLogInfo;->getID()[B

    move-result-object v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 136
    return-object v5

    .line 134
    .end local v5    # "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 140
    :cond_3d
    return-object v1

    .line 128
    :catch_3e
    move-exception v2

    .line 129
    .local v2, "e":Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    return-object v1

    .line 122
    .end local v2    # "e":Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    :catch_40
    move-exception v2

    .line 123
    .restart local v2    # "e":Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    return-object v1
.end method

.method public static blacklist getDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 2

    .line 144
    sget-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 145
    .local v0, "result":[Lcom/android/org/conscrypt/ct/CTLogInfo;
    if-nez v0, :cond_b

    .line 147
    invoke-static {}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->createDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 149
    :cond_b
    return-object v0
.end method

.method private static blacklist hexEncode([B)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # [B

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 251
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    aget-byte v3, p0, v2

    .line 252
    .local v3, "b":B
    sget-object v4, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    sget-object v4, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    and-int/lit8 v5, v3, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 255
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist loadLog(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 14
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/Scanner;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 190
    .local v0, "scan":Ljava/util/Scanner;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "description":Ljava/lang/String;
    const/4 v2, 0x0

    .line 194
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x0

    .line 197
    .local v3, "key":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v4
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_c2

    if-nez v4, :cond_1a

    .line 198
    const/4 v4, 0x0

    .line 222
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 198
    return-object v4

    .line 201
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 202
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    if-ge v5, v6, :cond_2f

    .line 204
    goto :goto_1a

    .line 207
    :cond_2f
    const/4 v5, 0x0

    aget-object v7, v4, v5

    .line 208
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v9, v4, v8

    .line 209
    .local v9, "value":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x66ca7c04

    if-eq v11, v12, :cond_5e

    const v5, 0x19e5f

    if-eq v11, v5, :cond_54

    const v5, 0x1c56f

    if-eq v11, v5, :cond_4a

    :cond_49
    goto :goto_67

    :cond_4a
    const-string v5, "url"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    move v5, v8

    goto :goto_68

    :cond_54
    const-string v5, "key"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    move v5, v6

    goto :goto_68

    :cond_5e
    const-string v11, "description"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_64
    .catchall {:try_start_1a .. :try_end_64} :catchall_c2

    if-eqz v11, :cond_49

    goto :goto_68

    :goto_67
    move v5, v10

    :goto_68
    if-eqz v5, :cond_73

    if-eq v5, v8, :cond_71

    if-eq v5, v6, :cond_6f

    goto :goto_75

    .line 217
    :cond_6f
    move-object v3, v9

    goto :goto_75

    .line 214
    :cond_71
    move-object v2, v9

    .line 215
    goto :goto_75

    .line 211
    :cond_73
    move-object v1, v9

    .line 212
    nop

    .line 220
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :goto_75
    goto :goto_1a

    .line 222
    :cond_76
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 223
    nop

    .line 225
    if-eqz v1, :cond_ba

    if-eqz v2, :cond_ba

    if-eqz v3, :cond_ba

    .line 231
    :try_start_80
    new-instance v4, Ljava/io/ByteArrayInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-----BEGIN PUBLIC KEY-----\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n-----END PUBLIC KEY-----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->US_ASCII:Ljava/nio/charset/Charset;

    .line 234
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 231
    invoke-static {v4}, Lcom/android/org/conscrypt/InternalUtil;->readPublicKeyPem(Ljava/io/InputStream;)Ljava/security/PublicKey;

    move-result-object v4
    :try_end_a5
    .catch Ljava/security/InvalidKeyException; {:try_start_80 .. :try_end_a5} :catch_b3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_80 .. :try_end_a5} :catch_ac

    .line 239
    .local v4, "pubkey":Ljava/security/PublicKey;
    nop

    .line 241
    new-instance v5, Lcom/android/org/conscrypt/ct/CTLogInfo;

    invoke-direct {v5, v4, v1, v2}, Lcom/android/org/conscrypt/ct/CTLogInfo;-><init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 237
    .end local v4    # "pubkey":Ljava/security/PublicKey;
    :catch_ac
    move-exception v4

    .line 238
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    invoke-direct {v5, v4}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 235
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_b3
    move-exception v4

    .line 236
    .local v4, "e":Ljava/security/InvalidKeyException;
    new-instance v5, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    invoke-direct {v5, v4}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 226
    .end local v4    # "e":Ljava/security/InvalidKeyException;
    :cond_ba
    new-instance v4, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    const-string v5, "Missing one of \'description\', \'url\' or \'key\'"

    invoke-direct {v4, v5}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :catchall_c2
    move-exception v4

    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 223
    throw v4
.end method


# virtual methods
.method public blacklist getKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 5
    .param p1, "logId"    # [B

    .line 99
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 101
    .local v1, "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    if-eqz v1, :cond_f

    .line 102
    return-object v1

    .line 104
    :cond_f
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 105
    const/4 v2, 0x0

    return-object v2

    .line 108
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->findKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_25

    .line 110
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 112
    :cond_25
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_2a
    return-object v1
.end method
