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
.field private static final HEX_DIGITS:[C

.field private static volatile defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

.field private static final defaultSystemLogDir:Ljava/io/File;

.field private static final defaultUserLogDir:Ljava/io/File;


# instance fields
.field private fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

.field private logCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/org/conscrypt/ct/CTLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private missingLogCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private systemLogDir:Ljava/io/File;

.field private userLogDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 65
    const/4 v2, 0x0

    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 67
    const-string/jumbo v2, "ANDROID_DATA"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "ANDROID_DATA":Ljava/lang/String;
    const-string/jumbo v2, "ANDROID_ROOT"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "ANDROID_ROOT":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v0}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "/misc/keychain/trusted_ct_logs/current/"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultUserLogDir:Ljava/io/File;

    .line 70
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v1}, vtable@77
    nop

    move-result-object v3

    const-string/jumbo v4, "/etc/security/ct_known_logs/"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultSystemLogDir:Ljava/io/File;

    .line 239
    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_52

    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    .line 41
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 239
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

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 81
    sget-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultUserLogDir:Ljava/io/File;

    .line 82
    sget-object v1, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultSystemLogDir:Ljava/io/File;

    .line 83
    invoke-static {}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->getDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v2

    .line 81
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;-><init>(Ljava/io/File;Ljava/io/File;[Lcom/android/org/conscrypt/ct/CTLogInfo;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;[Lcom/android/org/conscrypt/ct/CTLogInfo;)V
    .registers 5
    .param p1, "userLogDir"    # Ljava/io/File;
    .param p2, "systemLogDir"    # Ljava/io/File;
    .param p3, "fallbackLogs"    # [Lcom/android/org/conscrypt/ct/CTLogInfo;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    .line 87
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->userLogDir:Ljava/io/File;

    .line 88
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->systemLogDir:Ljava/io/File;

    .line 89
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 90
    return-void
.end method

.method private static createDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 8

    .prologue
    const/16 v7, 0x8

    .line 148
    new-array v3, v7, [Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 149
    .local v3, "logs":[Lcom/android/org/conscrypt/ct/CTLogInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v7, :cond_28

    .line 151
    :try_start_7
    sget-object v4, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_KEYS:[[B

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/android/org/conscrypt/InternalUtil;->logKeyToPublicKey([B)Ljava/security/PublicKey;

    move-result-object v2

    .line 153
    .local v2, "key":Ljava/security/PublicKey;
    new-instance v4, Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 154
    sget-object v5, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_DESCRIPTIONS:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 155
    sget-object v6, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_URLS:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 153
    invoke-direct {v4, v2, v5, v6}, Lcom/android/org/conscrypt/ct/CTLogInfo;-><init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v1
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_1e} :catch_21

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 156
    .end local v2    # "key":Ljava/security/PublicKey;
    :catch_21
    move-exception v0

    .line 157
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 161
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_28
    sput-object v3, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 162
    return-object v3
.end method

.method private findKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 11
    .param p1, "logId"    # [B

    .prologue
    const/4 v8, 0x0

    .line 114
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->hexEncode([B)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "filename":Ljava/lang/String;
    :try_start_5
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->userLogDir:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    :try_end_f
    .catch Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException; {:try_start_5 .. :try_end_f} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_13

    move-result-object v4

    return-object v4

    .line 117
    :catch_11
    move-exception v0

    .line 118
    .local v0, "e":Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    return-object v8

    .line 119
    .end local v0    # "e":Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    :catch_13
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_14
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->systemLogDir:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    :try_end_1e
    .catch Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException; {:try_start_14 .. :try_end_1e} :catch_20
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1e} :catch_22

    move-result-object v4

    return-object v4

    .line 123
    :catch_20
    move-exception v0

    .line 124
    .restart local v0    # "e":Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    return-object v8

    .line 125
    .end local v0    # "e":Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    :catch_22
    move-exception v1

    .line 128
    iget-object v4, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->userLogDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_41

    .line 129
    iget-object v5, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_2f
    if-ge v4, v6, :cond_41

    aget-object v3, v5, v4

    .line 130
    .local v3, "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    invoke-virtual {v3}, Lcom/android/org/conscrypt/ct/CTLogInfo;->getID()[B

    move-result-object v7

    invoke-static {p1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 131
    return-object v3

    .line 129
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 135
    .end local v3    # "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    :cond_41
    return-object v8
.end method

.method public static getDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 140
    .local v0, "result":[Lcom/android/org/conscrypt/ct/CTLogInfo;
    if-nez v0, :cond_a

    .line 142
    invoke-static {}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->createDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 144
    :cond_a
    return-object v0
.end method

.method private static hexEncode([B)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # [B

    .prologue
    .line 245
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 246
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    array-length v3, p0

    :goto_a
    if-ge v2, v3, :cond_25

    aget-byte v0, p0, v2

    .line 247
    .local v0, "b":B
    sget-object v4, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    sget-object v4, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 250
    .end local v0    # "b":B
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static loadLog(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 15
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x0

    .line 184
    new-instance v7, Ljava/util/Scanner;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v7, p0, v10}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 185
    .local v7, "scan":Ljava/util/Scanner;
    const-string/jumbo v10, "\n"

    invoke-virtual {v7, v10}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "description":Ljava/lang/String;
    const/4 v8, 0x0

    .line 189
    .local v8, "url":Ljava/lang/String;
    const/4 v3, 0x0

    .line 192
    .local v3, "key":Ljava/lang/String;
    :try_start_13
    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_69

    move-result v10

    if-nez v10, :cond_1d

    .line 217
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    .line 193
    return-object v11

    .line 196
    .end local v0    # "description":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_59

    .line 197
    invoke-virtual {v7}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ":"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, "parts":[Ljava/lang/String;
    array-length v10, v5

    if-lt v10, v13, :cond_1d

    .line 202
    const/4 v10, 0x0

    aget-object v4, v5, v10

    .line 203
    .local v4, "name":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v9, v5, v10

    .line 204
    .local v9, "value":Ljava/lang/String;
    const-string/jumbo v10, "description"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 206
    move-object v0, v9

    .local v0, "description":Ljava/lang/String;
    goto :goto_1d

    .line 204
    .end local v0    # "description":Ljava/lang/String;
    :cond_43
    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 209
    move-object v8, v9

    .line 210
    .local v8, "url":Ljava/lang/String;
    goto :goto_1d

    .line 204
    .end local v8    # "url":Ljava/lang/String;
    :cond_4e
    const-string/jumbo v10, "key"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_1d .. :try_end_54} :catchall_69

    move-result v10

    if-eqz v10, :cond_1d

    .line 212
    move-object v3, v9

    .line 213
    .local v3, "key":Ljava/lang/String;
    goto :goto_1d

    .line 217
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_59
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    .line 220
    if-eqz v0, :cond_60

    if-nez v8, :cond_6e

    .line 221
    :cond_60
    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    const-string/jumbo v11, "Missing one of \'description\', \'url\' or \'key\'"

    invoke-direct {v10, v11}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 216
    :catchall_69
    move-exception v10

    .line 217
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    .line 216
    throw v10

    .line 220
    :cond_6e
    if-eqz v3, :cond_60

    .line 226
    :try_start_70
    new-instance v10, Ljava/io/StringBufferInputStream;

    .line 227
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "-----BEGIN PUBLIC KEY-----\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 228
    const-string/jumbo v12, "\n"

    .line 227
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 229
    const-string/jumbo v12, "-----END PUBLIC KEY-----"

    .line 227
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 226
    invoke-direct {v10, v11}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/org/conscrypt/InternalUtil;->readPublicKeyPem(Ljava/io/InputStream;)Ljava/security/PublicKey;
    :try_end_9a
    .catch Ljava/security/InvalidKeyException; {:try_start_70 .. :try_end_9a} :catch_a8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_70 .. :try_end_9a} :catch_a1

    move-result-object v6

    .line 236
    .local v6, "pubkey":Ljava/security/PublicKey;
    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogInfo;

    invoke-direct {v10, v6, v0, v8}, Lcom/android/org/conscrypt/ct/CTLogInfo;-><init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 232
    .end local v6    # "pubkey":Ljava/security/PublicKey;
    :catch_a1
    move-exception v2

    .line 233
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    invoke-direct {v10, v2}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 230
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_a8
    move-exception v1

    .line 231
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    invoke-direct {v10, v1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method


# virtual methods
.method public getKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .registers 6
    .param p1, "logId"    # [B

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ct/CTLogInfo;

    .line 96
    .local v1, "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    if-eqz v1, :cond_10

    .line 97
    return-object v1

    .line 99
    :cond_10
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 100
    return-object v3

    .line 103
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->findKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_25

    .line 105
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_24
    return-object v1

    .line 107
    :cond_25
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method
