.class public final Lcom/android/okhttp/internal/tls/OkHostnameVerifier;
.super Ljava/lang/Object;
.source "OkHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final blacklist ALT_DNS_NAME:I = 0x2

.field private static final blacklist ALT_IPA_NAME:I = 0x7

.field public static final blacklist INSTANCE:Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

.field private static final blacklist VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist strictWildcardMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;-><init>(Z)V

    sput-object v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    .line 55
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "strictWildcardMode"    # Z

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->strictWildcardMode:Z

    .line 68
    return-void
.end method

.method public static blacklist allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 6
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 140
    .local v0, "altIpaNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "altDnsNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    return-object v2
.end method

.method private static blacklist getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .registers 9
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v1

    .line 151
    .local v1, "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez v1, :cond_10

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 154
    :cond_10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 155
    .local v3, "subjectAltName":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 156
    .local v4, "entry":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v4, :cond_14

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2b

    .line 157
    goto :goto_14

    .line 159
    :cond_2b
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 160
    .local v5, "altNameType":Ljava/lang/Integer;
    if-nez v5, :cond_35

    .line 161
    goto :goto_14

    .line 163
    :cond_35
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_47

    .line 164
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 165
    .local v6, "altName":Ljava/lang/String;
    if-eqz v6, :cond_47

    .line 166
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_47} :catch_49

    .line 169
    .end local v3    # "subjectAltName":Ljava/lang/Object;
    .end local v4    # "entry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "altNameType":Ljava/lang/Integer;
    .end local v6    # "altName":Ljava/lang/String;
    :cond_47
    goto :goto_14

    .line 170
    :cond_48
    return-object v0

    .line 171
    .end local v1    # "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catch_49
    move-exception v1

    .line 172
    .local v1, "e":Ljava/security/cert/CertificateParsingException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist strictInstance()Lcom/android/okhttp/internal/tls/OkHostnameVerifier;
    .registers 2

    .line 71
    new-instance v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;-><init>(Z)V

    return-object v0
.end method

.method static blacklist verifyAsIpAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "host"    # Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private blacklist verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    if-eqz p1, :cond_cc

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_cc

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cc

    .line 187
    const-string v2, ".."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_cc

    .line 191
    :cond_1b
    if-eqz p2, :cond_cb

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_cb

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_cb

    .line 192
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto/16 :goto_cb

    .line 206
    :cond_31
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x2e

    if-nez v2, :cond_48

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    :cond_48
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 214
    :cond_5d
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 217
    const-string v1, "*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 235
    :cond_70
    const-string v1, "*."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ca

    const/16 v2, 0x2a

    const/4 v4, 0x1

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_83

    goto :goto_ca

    .line 244
    :cond_83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_8e

    .line 246
    return v0

    .line 249
    :cond_8e
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 251
    return v0

    .line 255
    :cond_95
    iget-boolean v1, p0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->strictWildcardMode:Z

    if-eqz v1, :cond_aa

    .line 258
    const/4 v1, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "domainPart":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_aa

    .line 261
    return v0

    .line 267
    .end local v1    # "domainPart":Ljava/lang/String;
    :cond_aa
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 270
    return v0

    .line 274
    :cond_b5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v2, v6

    .line 275
    .local v2, "suffixStartIndexInHostName":I
    if-lez v2, :cond_c9

    add-int/lit8 v6, v2, -0x1

    .line 276
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    if-eq v3, v5, :cond_c9

    .line 278
    return v0

    .line 282
    :cond_c9
    return v4

    .line 238
    .end local v1    # "suffix":Ljava/lang/String;
    .end local v2    # "suffixStartIndexInHostName":I
    :cond_ca
    :goto_ca
    return v0

    .line 194
    :cond_cb
    :goto_cb
    return v0

    .line 189
    :cond_cc
    :goto_cc
    return v0
.end method

.method private blacklist verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 112
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "hasDns":Z
    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "altNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_11
    if-ge v2, v3, :cond_25

    .line 116
    const/4 v0, 0x1

    .line 117
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 118
    const/4 v4, 0x1

    return v4

    .line 115
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 135
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_25
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 7
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 99
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "altNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_a
    if-ge v1, v2, :cond_1d

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 102
    const/4 v3, 0x1

    return v3

    .line 100
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 105
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 86
    invoke-static {p1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    goto :goto_f

    .line 88
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    .line 86
    :goto_f
    return v0
.end method

.method public whitelist core-platform-api test-api verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 78
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 79
    .local v1, "certificates":[Ljava/security/cert/Certificate;
    aget-object v2, v1, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, v2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_e

    return v0

    .line 80
    .end local v1    # "certificates":[Ljava/security/cert/Certificate;
    :catch_e
    move-exception v1

    .line 81
    .local v1, "e":Ljavax/net/ssl/SSLException;
    return v0
.end method
