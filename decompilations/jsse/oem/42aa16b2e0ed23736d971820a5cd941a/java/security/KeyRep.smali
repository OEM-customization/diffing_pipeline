.class public Ljava/security/KeyRep;
.super Ljava/lang/Object;
.source "KeyRep.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyRep$Type;
    }
.end annotation


# static fields
.field private static final greylist-max-o PKCS8:Ljava/lang/String; = "PKCS#8"

.field private static final greylist-max-o RAW:Ljava/lang/String; = "RAW"

.field private static final greylist-max-o X509:Ljava/lang/String; = "X.509"

.field private static final whitelist serialVersionUID:J = -0x4206b04c77655abdL


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o encoded:[B

.field private greylist-max-o format:Ljava/lang/String;

.field private greylist-max-o type:Ljava/security/KeyRep$Type;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 7
    .param p1, "type"    # Ljava/security/KeyRep$Type;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "encoded"    # [B

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    if-eqz p1, :cond_20

    if-eqz p2, :cond_20

    if-eqz p3, :cond_20

    if-eqz p4, :cond_20

    .line 139
    iput-object p1, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    .line 140
    iput-object p2, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    .line 141
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    .line 142
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/KeyRep;->encoded:[B

    .line 143
    return-void

    .line 136
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input(s)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected whitelist core-platform-api test-api readResolve()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    sget-object v1, Ljava/security/KeyRep$Type;->SECRET:Ljava/security/KeyRep$Type;

    if-ne v0, v1, :cond_1a

    const-string v0, "RAW"

    iget-object v1, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 172
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Ljava/security/KeyRep;->encoded:[B

    iget-object v2, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 173
    :cond_1a
    iget-object v0, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    sget-object v1, Ljava/security/KeyRep$Type;->PUBLIC:Ljava/security/KeyRep$Type;

    if-ne v0, v1, :cond_3c

    const-string v0, "X.509"

    iget-object v1, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 174
    iget-object v0, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 175
    .local v0, "f":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    iget-object v2, p0, Ljava/security/KeyRep;->encoded:[B

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    .line 176
    .end local v0    # "f":Ljava/security/KeyFactory;
    :cond_3c
    iget-object v0, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    sget-object v1, Ljava/security/KeyRep$Type;->PRIVATE:Ljava/security/KeyRep$Type;

    if-ne v0, v1, :cond_5e

    const-string v0, "PKCS#8"

    iget-object v1, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 177
    iget-object v0, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 178
    .restart local v0    # "f":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    iget-object v2, p0, Ljava/security/KeyRep;->encoded:[B

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1

    .line 180
    .end local v0    # "f":Ljava/security/KeyFactory;
    :cond_5e
    new-instance v0, Ljava/io/NotSerializableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized type/format combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/security/KeyRep;
    throw v0
    :try_end_81
    .catch Ljava/io/NotSerializableException; {:try_start_0 .. :try_end_81} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_81} :catch_81

    .line 186
    .restart local p0    # "this":Ljava/security/KeyRep;
    :catch_81
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/NotSerializableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "java.security.Key: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "nse":Ljava/io/NotSerializableException;
    invoke-virtual {v1, v0}, Ljava/io/NotSerializableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 193
    throw v1

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "nse":Ljava/io/NotSerializableException;
    :catch_b5
    move-exception v0

    .line 185
    .local v0, "nse":Ljava/io/NotSerializableException;
    throw v0
.end method
