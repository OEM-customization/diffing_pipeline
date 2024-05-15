.class public Lsun/security/jca/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# static fields
.field private static final blacklist BACKUP_PROVIDER_CLASSNAME:Ljava/lang/String; = "sun.security.provider.VerificationProvider"

.field public static final blacklist DEFAULT_MAXIMUM_ALLOWABLE_TARGET_API_LEVEL_FOR_BC_DEPRECATION:I = 0x1b

.field private static final blacklist DEPRECATED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist SYSTEM_BOUNCY_CASTLE_PROVIDER:Ljava/security/Provider;

.field private static final blacklist jarVerificationProviders:[Ljava/lang/String;

.field private static blacklist maximumAllowableApiLevelForBcDeprecation:I

.field private static volatile blacklist providerList:Lsun/security/jca/ProviderList;

.field private static final blacklist threadLists:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lsun/security/jca/ProviderList;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist threadListsUsed:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 178

    .line 46
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    sput-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    .line 64
    sget-object v0, Lsun/security/jca/ProviderList;->EMPTY:Lsun/security/jca/ProviderList;

    sput-object v0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 65
    invoke-static {}, Lsun/security/jca/ProviderList;->fromSecurityProperties()Lsun/security/jca/ProviderList;

    move-result-object v0

    sput-object v0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 71
    sget-object v0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->size()I

    move-result v0

    .line 72
    .local v0, "numConfiguredProviders":I
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v1

    sput-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 73
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1b8

    .line 78
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    const-string v2, "BC"

    invoke-virtual {v1, v2}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    sput-object v1, Lsun/security/jca/Providers;->SYSTEM_BOUNCY_CASTLE_PROVIDER:Ljava/security/Provider;

    .line 107
    .end local v0    # "numConfiguredProviders":I
    const-string v0, "com.android.org.conscrypt.OpenSSLProvider"

    const-string v1, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    const-string v2, "com.android.org.conscrypt.JSSEProvider"

    const-string v3, "sun.security.provider.VerificationProvider"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    .line 296
    const/16 v0, 0x1b

    sput v0, Lsun/security/jca/Providers;->maximumAllowableApiLevelForBcDeprecation:I

    .line 353
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lsun/security/jca/Providers;->DEPRECATED_ALGORITHMS:Ljava/util/Set;

    .line 355
    const-string v1, "ALGORITHMPARAMETERS.1.2.840.113549.3.7"

    const-string v2, "ALGORITHMPARAMETERS.2.16.840.1.101.3.4.1.2"

    const-string v3, "ALGORITHMPARAMETERS.2.16.840.1.101.3.4.1.22"

    const-string v4, "ALGORITHMPARAMETERS.2.16.840.1.101.3.4.1.26"

    const-string v5, "ALGORITHMPARAMETERS.2.16.840.1.101.3.4.1.42"

    const-string v6, "ALGORITHMPARAMETERS.2.16.840.1.101.3.4.1.46"

    const-string v7, "ALGORITHMPARAMETERS.2.16.840.1.101.3.4.1.6"

    const-string v8, "ALGORITHMPARAMETERS.AES"

    const-string v9, "ALGORITHMPARAMETERS.DESEDE"

    const-string v10, "ALGORITHMPARAMETERS.EC"

    const-string v11, "ALGORITHMPARAMETERS.GCM"

    const-string v12, "ALGORITHMPARAMETERS.OAEP"

    const-string v13, "ALGORITHMPARAMETERS.TDEA"

    const-string v14, "CERTIFICATEFACTORY.X.509"

    const-string v15, "CERTIFICATEFACTORY.X509"

    const-string v16, "CIPHER.1.2.840.113549.3.4"

    const-string v17, "CIPHER.2.16.840.1.101.3.4.1.26"

    const-string v18, "CIPHER.2.16.840.1.101.3.4.1.46"

    const-string v19, "CIPHER.2.16.840.1.101.3.4.1.6"

    const-string v20, "CIPHER.AES/GCM/NOPADDING"

    const-string v21, "CIPHER.ARC4"

    const-string v22, "CIPHER.ARCFOUR"

    const-string v23, "CIPHER.OID.1.2.840.113549.3.4"

    const-string v24, "CIPHER.RC4"

    const-string v25, "CIPHER.ARC4/ECB/NOPADDING"

    const-string v26, "CIPHER.ARC4/NONE/NOPADDING"

    const-string v27, "CIPHER.ARCFOUR/ECB/NOPADDING"

    const-string v28, "CIPHER.ARCFOUR/NONE/NOPADDING"

    const-string v29, "CIPHER.RC4/ECB/NOPADDING"

    const-string v30, "CIPHER.RC4/NONE/NOPADDING"

    const-string v31, "KEYAGREEMENT.ECDH"

    const-string v32, "KEYFACTORY.1.2.840.10045.2.1"

    const-string v33, "KEYFACTORY.1.2.840.113549.1.1.1"

    const-string v34, "KEYFACTORY.1.2.840.113549.1.1.7"

    const-string v35, "KEYFACTORY.1.3.133.16.840.63.0.2"

    const-string v36, "KEYFACTORY.2.5.8.1.1"

    const-string v37, "KEYFACTORY.EC"

    const-string v38, "KEYFACTORY.RSA"

    const-string v39, "KEYGENERATOR.1.2.840.113549.2.10"

    const-string v40, "KEYGENERATOR.1.2.840.113549.2.11"

    const-string v41, "KEYGENERATOR.1.2.840.113549.2.7"

    const-string v42, "KEYGENERATOR.1.2.840.113549.2.8"

    const-string v43, "KEYGENERATOR.1.2.840.113549.2.9"

    const-string v44, "KEYGENERATOR.1.3.6.1.5.5.8.1.1"

    const-string v45, "KEYGENERATOR.1.3.6.1.5.5.8.1.2"

    const-string v46, "KEYGENERATOR.2.16.840.1.101.3.4.2.1"

    const-string v47, "KEYGENERATOR.AES"

    const-string v48, "KEYGENERATOR.DESEDE"

    const-string v49, "KEYGENERATOR.HMAC-MD5"

    const-string v50, "KEYGENERATOR.HMAC-SHA1"

    const-string v51, "KEYGENERATOR.HMAC-SHA224"

    const-string v52, "KEYGENERATOR.HMAC-SHA256"

    const-string v53, "KEYGENERATOR.HMAC-SHA384"

    const-string v54, "KEYGENERATOR.HMAC-SHA512"

    const-string v55, "KEYGENERATOR.HMAC/MD5"

    const-string v56, "KEYGENERATOR.HMAC/SHA1"

    const-string v57, "KEYGENERATOR.HMAC/SHA224"

    const-string v58, "KEYGENERATOR.HMAC/SHA256"

    const-string v59, "KEYGENERATOR.HMAC/SHA384"

    const-string v60, "KEYGENERATOR.HMAC/SHA512"

    const-string v61, "KEYGENERATOR.HMACMD5"

    const-string v62, "KEYGENERATOR.HMACSHA1"

    const-string v63, "KEYGENERATOR.HMACSHA224"

    const-string v64, "KEYGENERATOR.HMACSHA256"

    const-string v65, "KEYGENERATOR.HMACSHA384"

    const-string v66, "KEYGENERATOR.HMACSHA512"

    const-string v67, "KEYGENERATOR.TDEA"

    const-string v68, "KEYPAIRGENERATOR.1.2.840.10045.2.1"

    const-string v69, "KEYPAIRGENERATOR.1.2.840.113549.1.1.1"

    const-string v70, "KEYPAIRGENERATOR.1.2.840.113549.1.1.7"

    const-string v71, "KEYPAIRGENERATOR.1.3.133.16.840.63.0.2"

    const-string v72, "KEYPAIRGENERATOR.2.5.8.1.1"

    const-string v73, "KEYPAIRGENERATOR.EC"

    const-string v74, "KEYPAIRGENERATOR.RSA"

    const-string v75, "MAC.1.2.840.113549.2.10"

    const-string v76, "MAC.1.2.840.113549.2.11"

    const-string v77, "MAC.1.2.840.113549.2.7"

    const-string v78, "MAC.1.2.840.113549.2.8"

    const-string v79, "MAC.1.2.840.113549.2.9"

    const-string v80, "MAC.1.3.6.1.5.5.8.1.1"

    const-string v81, "MAC.1.3.6.1.5.5.8.1.2"

    const-string v82, "MAC.2.16.840.1.101.3.4.2.1"

    const-string v83, "MAC.HMAC-MD5"

    const-string v84, "MAC.HMAC-SHA1"

    const-string v85, "MAC.HMAC-SHA224"

    const-string v86, "MAC.HMAC-SHA256"

    const-string v87, "MAC.HMAC-SHA384"

    const-string v88, "MAC.HMAC-SHA512"

    const-string v89, "MAC.HMAC/MD5"

    const-string v90, "MAC.HMAC/SHA1"

    const-string v91, "MAC.HMAC/SHA224"

    const-string v92, "MAC.HMAC/SHA256"

    const-string v93, "MAC.HMAC/SHA384"

    const-string v94, "MAC.HMAC/SHA512"

    const-string v95, "MAC.HMACMD5"

    const-string v96, "MAC.HMACSHA1"

    const-string v97, "MAC.HMACSHA224"

    const-string v98, "MAC.HMACSHA256"

    const-string v99, "MAC.HMACSHA384"

    const-string v100, "MAC.HMACSHA512"

    const-string v101, "MAC.PBEWITHHMACSHA224"

    const-string v102, "MAC.PBEWITHHMACSHA256"

    const-string v103, "MAC.PBEWITHHMACSHA384"

    const-string v104, "MAC.PBEWITHHMACSHA512"

    const-string v105, "MESSAGEDIGEST.1.2.840.113549.2.5"

    const-string v106, "MESSAGEDIGEST.1.3.14.3.2.26"

    const-string v107, "MESSAGEDIGEST.2.16.840.1.101.3.4.2.1"

    const-string v108, "MESSAGEDIGEST.2.16.840.1.101.3.4.2.2"

    const-string v109, "MESSAGEDIGEST.2.16.840.1.101.3.4.2.3"

    const-string v110, "MESSAGEDIGEST.2.16.840.1.101.3.4.2.4"

    const-string v111, "MESSAGEDIGEST.MD5"

    const-string v112, "MESSAGEDIGEST.SHA"

    const-string v113, "MESSAGEDIGEST.SHA-1"

    const-string v114, "MESSAGEDIGEST.SHA-224"

    const-string v115, "MESSAGEDIGEST.SHA-256"

    const-string v116, "MESSAGEDIGEST.SHA-384"

    const-string v117, "MESSAGEDIGEST.SHA-512"

    const-string v118, "MESSAGEDIGEST.SHA1"

    const-string v119, "MESSAGEDIGEST.SHA224"

    const-string v120, "MESSAGEDIGEST.SHA256"

    const-string v121, "MESSAGEDIGEST.SHA384"

    const-string v122, "MESSAGEDIGEST.SHA512"

    const-string v123, "SECRETKEYFACTORY.DESEDE"

    const-string v124, "SECRETKEYFACTORY.TDEA"

    const-string v125, "SIGNATURE.1.2.840.10045.4.1"

    const-string v126, "SIGNATURE.1.2.840.10045.4.3.1"

    const-string v127, "SIGNATURE.1.2.840.10045.4.3.2"

    const-string v128, "SIGNATURE.1.2.840.10045.4.3.3"

    const-string v129, "SIGNATURE.1.2.840.10045.4.3.4"

    const-string v130, "SIGNATURE.1.2.840.113549.1.1.11"

    const-string v131, "SIGNATURE.1.2.840.113549.1.1.12"

    const-string v132, "SIGNATURE.1.2.840.113549.1.1.13"

    const-string v133, "SIGNATURE.1.2.840.113549.1.1.14"

    const-string v134, "SIGNATURE.1.2.840.113549.1.1.4"

    const-string v135, "SIGNATURE.1.2.840.113549.1.1.5"

    const-string v136, "SIGNATURE.1.3.14.3.2.29"

    const-string v137, "SIGNATURE.ECDSA"

    const-string v138, "SIGNATURE.ECDSAWITHSHA1"

    const-string v139, "SIGNATURE.MD5/RSA"

    const-string v140, "SIGNATURE.MD5WITHRSA"

    const-string v141, "SIGNATURE.MD5WITHRSAENCRYPTION"

    const-string v142, "SIGNATURE.NONEWITHECDSA"

    const-string v143, "SIGNATURE.OID.1.2.840.10045.4.3.1"

    const-string v144, "SIGNATURE.OID.1.2.840.10045.4.3.2"

    const-string v145, "SIGNATURE.OID.1.2.840.10045.4.3.3"

    const-string v146, "SIGNATURE.OID.1.2.840.10045.4.3.4"

    const-string v147, "SIGNATURE.OID.1.2.840.113549.1.1.11"

    const-string v148, "SIGNATURE.OID.1.2.840.113549.1.1.12"

    const-string v149, "SIGNATURE.OID.1.2.840.113549.1.1.13"

    const-string v150, "SIGNATURE.OID.1.2.840.113549.1.1.14"

    const-string v151, "SIGNATURE.OID.1.2.840.113549.1.1.4"

    const-string v152, "SIGNATURE.OID.1.2.840.113549.1.1.5"

    const-string v153, "SIGNATURE.OID.1.3.14.3.2.29"

    const-string v154, "SIGNATURE.SHA1/RSA"

    const-string v155, "SIGNATURE.SHA1WITHECDSA"

    const-string v156, "SIGNATURE.SHA1WITHRSA"

    const-string v157, "SIGNATURE.SHA1WITHRSAENCRYPTION"

    const-string v158, "SIGNATURE.SHA224/ECDSA"

    const-string v159, "SIGNATURE.SHA224/RSA"

    const-string v160, "SIGNATURE.SHA224WITHECDSA"

    const-string v161, "SIGNATURE.SHA224WITHRSA"

    const-string v162, "SIGNATURE.SHA224WITHRSAENCRYPTION"

    const-string v163, "SIGNATURE.SHA256/ECDSA"

    const-string v164, "SIGNATURE.SHA256/RSA"

    const-string v165, "SIGNATURE.SHA256WITHECDSA"

    const-string v166, "SIGNATURE.SHA256WITHRSA"

    const-string v167, "SIGNATURE.SHA256WITHRSAENCRYPTION"

    const-string v168, "SIGNATURE.SHA384/ECDSA"

    const-string v169, "SIGNATURE.SHA384/RSA"

    const-string v170, "SIGNATURE.SHA384WITHECDSA"

    const-string v171, "SIGNATURE.SHA384WITHRSA"

    const-string v172, "SIGNATURE.SHA384WITHRSAENCRYPTION"

    const-string v173, "SIGNATURE.SHA512/ECDSA"

    const-string v174, "SIGNATURE.SHA512/RSA"

    const-string v175, "SIGNATURE.SHA512WITHECDSA"

    const-string v176, "SIGNATURE.SHA512WITHRSA"

    const-string v177, "SIGNATURE.SHA512WITHRSAENCRYPTION"

    filled-new-array/range {v1 .. v177}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 540
    return-void

    .line 74
    .restart local v0    # "numConfiguredProviders":I
    :cond_1b8
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unable to configure default providers"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static declared-synchronized blacklist beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;
    .registers 5
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    const-class v0, Lsun/security/jca/Providers;

    monitor-enter v0

    .line 253
    :try_start_3
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1d

    .line 254
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadLocal providers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 256
    :cond_1d
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/jca/ProviderList;

    .line 257
    .local v1, "oldList":Lsun/security/jca/ProviderList;
    sget v2, Lsun/security/jca/Providers;->threadListsUsed:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lsun/security/jca/Providers;->threadListsUsed:I

    .line 258
    sget-object v2, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_32

    .line 259
    monitor-exit v0

    return-object v1

    .line 252
    .end local v1    # "oldList":Lsun/security/jca/ProviderList;
    .end local p0    # "list":Lsun/security/jca/ProviderList;
    :catchall_32
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static blacklist changeThreadProviderList(Lsun/security/jca/ProviderList;)V
    .registers 2
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .line 233
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method private static blacklist checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lsun/security/jca/Providers;->DEPRECATED_ALGORITHMS:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 552
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    sget v2, Lsun/security/jca/Providers;->maximumAllowableApiLevelForBcDeprecation:I

    if-gt v1, v2, :cond_66

    .line 555
    const-string v1, " ******** DEPRECATED FUNCTIONALITY ********"

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " * The implementation of the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " algorithm from"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 557
    const-string v1, " * the BC provider is deprecated in this version of Android."

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 558
    const-string v1, " * It will be removed in a future version of Android and your"

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 559
    const-string v1, " * application will no longer be able to request it.  Please see"

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 560
    const-string v1, " * https://android-developers.googleblog.com/2018/03/cryptography-changes-in-android-p.html"

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 561
    const-string v1, " * for more details."

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    goto :goto_82

    .line 563
    :cond_66
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The BC provider no longer provides an implementation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".  Please see https://android-developers.googleblog.com/2018/03/cryptography-changes-in-android-p.html for more details."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :cond_82
    :goto_82
    return-void
.end method

.method public static declared-synchronized blacklist checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-class v0, Lsun/security/jca/Providers;

    monitor-enter v0

    .line 328
    :try_start_3
    const-string v1, "BC"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 329
    invoke-virtual {v1, p0}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    sget-object v2, Lsun/security/jca/Providers;->SYSTEM_BOUNCY_CASTLE_PROVIDER:Ljava/security/Provider;

    if-ne v1, v2, :cond_18

    .line 330
    invoke-static {p1, p2}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 332
    :cond_18
    monitor-exit v0

    return-void

    .line 327
    .end local p0    # "provider":Ljava/lang/String;
    .end local p1    # "service":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-class v0, Lsun/security/jca/Providers;

    monitor-enter v0

    .line 345
    :try_start_3
    sget-object v1, Lsun/security/jca/Providers;->SYSTEM_BOUNCY_CASTLE_PROVIDER:Ljava/security/Provider;

    if-ne p0, v1, :cond_a

    .line 346
    invoke-static {p1, p2}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 348
    :cond_a
    monitor-exit v0

    return-void

    .line 344
    .end local p0    # "provider":Ljava/security/Provider;
    .end local p1    # "service":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist endThreadProviderList(Lsun/security/jca/ProviderList;)V
    .registers 5
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    const-class v0, Lsun/security/jca/Providers;

    monitor-enter v0

    .line 263
    if-nez p0, :cond_16

    .line 264
    :try_start_5
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_10

    .line 265
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    const-string v2, "Disabling ThreadLocal providers"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 267
    :cond_10
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_35

    .line 269
    :cond_16
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_30

    .line 270
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring previous ThreadLocal providers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 273
    :cond_30
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 275
    :goto_35
    sget v1, Lsun/security/jca/Providers;->threadListsUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lsun/security/jca/Providers;->threadListsUsed:I
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3d

    .line 276
    monitor-exit v0

    return-void

    .line 262
    .end local p0    # "list":Lsun/security/jca/ProviderList;
    :catchall_3d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist getFullProviderList()Lsun/security/jca/ProviderList;
    .registers 3

    .line 192
    const-class v0, Lsun/security/jca/Providers;

    monitor-enter v0

    .line 193
    :try_start_3
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 194
    .local v1, "list":Lsun/security/jca/ProviderList;
    if-eqz v1, :cond_15

    .line 195
    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v2

    .line 196
    .local v2, "newList":Lsun/security/jca/ProviderList;
    if-eq v2, v1, :cond_13

    .line 197
    invoke-static {v2}, Lsun/security/jca/Providers;->changeThreadProviderList(Lsun/security/jca/ProviderList;)V

    .line 198
    move-object v1, v2

    .line 200
    :cond_13
    monitor-exit v0

    return-object v1

    .line 202
    .end local v2    # "newList":Lsun/security/jca/ProviderList;
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_25

    .line 203
    invoke-static {}, Lsun/security/jca/Providers;->getSystemProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 204
    .end local v1    # "list":Lsun/security/jca/ProviderList;
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 205
    .local v1, "newList":Lsun/security/jca/ProviderList;
    if-eq v1, v0, :cond_24

    .line 206
    invoke-static {v1}, Lsun/security/jca/Providers;->setSystemProviderList(Lsun/security/jca/ProviderList;)V

    .line 207
    move-object v0, v1

    .line 209
    :cond_24
    return-object v0

    .line 202
    .end local v0    # "list":Lsun/security/jca/ProviderList;
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public static blacklist getMaximumAllowableApiLevelForBcDeprecation()I
    .registers 1

    .line 314
    sget v0, Lsun/security/jca/Providers;->maximumAllowableApiLevelForBcDeprecation:I

    return v0
.end method

.method public static greylist getProviderList()Lsun/security/jca/ProviderList;
    .registers 1

    .line 166
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 167
    .local v0, "list":Lsun/security/jca/ProviderList;
    if-nez v0, :cond_a

    .line 168
    invoke-static {}, Lsun/security/jca/Providers;->getSystemProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 170
    :cond_a
    return-object v0
.end method

.method public static blacklist getSunProvider()Ljava/security/Provider;
    .registers 4

    .line 128
    :try_start_0
    sget-object v0, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 130
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_10
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    :try_start_11
    const-string v1, "sun.security.provider.VerificationProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 133
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_1e

    return-object v2

    .line 134
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1e
    move-exception v1

    .line 135
    .local v1, "ee":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Sun provider not found"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist getSystemProviderList()Lsun/security/jca/ProviderList;
    .registers 1

    .line 213
    sget-object v0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method public static blacklist getThreadProviderList()Lsun/security/jca/ProviderList;
    .registers 1

    .line 223
    sget v0, Lsun/security/jca/Providers;->threadListsUsed:I

    if-nez v0, :cond_6

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_6
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method public static blacklist setMaximumAllowableApiLevelForBcDeprecation(I)V
    .registers 1
    .param p0, "targetApiLevel"    # I

    .line 305
    sput p0, Lsun/security/jca/Providers;->maximumAllowableApiLevelForBcDeprecation:I

    .line 306
    return-void
.end method

.method public static blacklist setProviderList(Lsun/security/jca/ProviderList;)V
    .registers 2
    .param p0, "newList"    # Lsun/security/jca/ProviderList;

    .line 178
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    if-nez v0, :cond_a

    .line 179
    invoke-static {p0}, Lsun/security/jca/Providers;->setSystemProviderList(Lsun/security/jca/ProviderList;)V

    goto :goto_d

    .line 181
    :cond_a
    invoke-static {p0}, Lsun/security/jca/Providers;->changeThreadProviderList(Lsun/security/jca/ProviderList;)V

    .line 183
    :goto_d
    return-void
.end method

.method private static blacklist setSystemProviderList(Lsun/security/jca/ProviderList;)V
    .registers 1
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .line 217
    sput-object p0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 218
    return-void
.end method

.method public static greylist core-platform-api startJarVerification()Ljava/lang/Object;
    .registers 3

    .line 147
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 148
    .local v0, "currentList":Lsun/security/jca/ProviderList;
    sget-object v1, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/security/jca/ProviderList;->getJarList([Ljava/lang/String;)Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 150
    .local v1, "jarList":Lsun/security/jca/ProviderList;
    invoke-static {v1}, Lsun/security/jca/Providers;->beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;

    move-result-object v2

    return-object v2
.end method

.method public static greylist core-platform-api stopJarVerification(Ljava/lang/Object;)V
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 158
    move-object v0, p0

    check-cast v0, Lsun/security/jca/ProviderList;

    invoke-static {v0}, Lsun/security/jca/Providers;->endThreadProviderList(Lsun/security/jca/ProviderList;)V

    .line 159
    return-void
.end method
