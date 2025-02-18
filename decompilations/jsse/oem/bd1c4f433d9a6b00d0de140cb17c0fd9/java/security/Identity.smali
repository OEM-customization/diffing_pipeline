.class public abstract Ljava/security/Identity;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x321904f09f5e92d3L


# instance fields
.field certificates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field info:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;

.field scope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 105
    const-string/jumbo v0, "restoring..."

    invoke-direct {p0, v0}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string/jumbo v0, "No further information available."

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 120
    if-eqz p2, :cond_8

    .line 121
    invoke-virtual {p2, p0}, Ljava/security/IdentityScope;->addIdentity(Ljava/security/Identity;)V

    .line 123
    :cond_8
    iput-object p2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    .line 124
    return-void
.end method

.method private static check(Ljava/lang/String;)V
    .registers 2
    .param p0, "directive"    # Ljava/lang/String;

    .prologue
    .line 496
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 497
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 498
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 500
    :cond_9
    return-void
.end method

.method private keyEquals(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .registers 8
    .param p1, "aKey"    # Ljava/security/PublicKey;
    .param p2, "anotherKey"    # Ljava/security/PublicKey;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "aKeyFormat":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "anotherKeyFormat":Ljava/lang/String;
    if-nez v0, :cond_13

    move v4, v2

    :goto_d
    if-nez v1, :cond_15

    :goto_f
    xor-int/2addr v2, v4

    if-eqz v2, :cond_17

    .line 269
    return v3

    :cond_13
    move v4, v3

    .line 268
    goto :goto_d

    :cond_15
    move v2, v3

    goto :goto_f

    .line 270
    :cond_17
    if-eqz v0, :cond_22

    if-eqz v1, :cond_22

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 272
    return v3

    .line 273
    :cond_22
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 274
    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 273
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public addCertificate(Ljava/security/Certificate;)V
    .registers 4
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 249
    const-string/jumbo v0, "addIdentityCertificate"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v0, :cond_11

    .line 252
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 254
    :cond_11
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_2a

    .line 255
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/security/Identity;->keyEquals(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 256
    new-instance v0, Ljava/security/KeyManagementException;

    .line 257
    const-string/jumbo v1, "public key different from cert public key"

    .line 256
    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_2a
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 262
    :cond_30
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public certificates()[Ljava/security/Certificate;
    .registers 4

    .prologue
    .line 315
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v2, :cond_8

    .line 316
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/Certificate;

    return-object v2

    .line 318
    :cond_8
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 319
    .local v1, "len":I
    new-array v0, v1, [Ljava/security/Certificate;

    .line 320
    .local v0, "certs":[Ljava/security/Certificate;
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 321
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "identity"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 341
    if-ne p1, p0, :cond_4

    .line 342
    return v3

    .line 345
    :cond_4
    instance-of v1, p1, Ljava/security/Identity;

    if-eqz v1, :cond_1f

    move-object v0, p1

    .line 346
    check-cast v0, Ljava/security/Identity;

    .line 347
    .local v0, "i":Ljava/security/Identity;
    invoke-virtual {p0}, Ljava/security/Identity;->fullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/Identity;->fullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 348
    return v3

    .line 350
    :cond_1a
    invoke-virtual {p0, v0}, Ljava/security/Identity;->identityEquals(Ljava/security/Identity;)Z

    move-result v1

    return v1

    .line 353
    .end local v0    # "i":Ljava/security/Identity;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method fullName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 388
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 389
    .local v0, "parsable":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_24

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    :cond_24
    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final getScope()Ljava/security/IdentityScope;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected identityEquals(Ljava/security/Identity;)Z
    .registers 6
    .param p1, "identity"    # Ljava/security/Identity;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v3, p1, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 371
    return v2

    .line 373
    :cond_d
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_12
    iget-object v3, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v3, :cond_1d

    move v3, v1

    :goto_17
    xor-int/2addr v0, v3

    if-eqz v0, :cond_1f

    .line 374
    return v2

    :cond_1b
    move v0, v2

    .line 373
    goto :goto_12

    :cond_1d
    move v3, v2

    goto :goto_17

    .line 376
    :cond_1f
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_32

    iget-object v0, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_32

    .line 377
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    iget-object v3, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 378
    return v2

    .line 380
    :cond_32
    return v1
.end method

.method printCertificates()Ljava/lang/String;
    .registers 8

    .prologue
    .line 469
    const-string/jumbo v4, ""

    .line 470
    .local v4, "out":Ljava/lang/String;
    iget-object v5, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v5, :cond_b

    .line 471
    const-string/jumbo v5, "\tno certificates"

    return-object v5

    .line 473
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\tcertificates: \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 475
    const/4 v2, 0x1

    .line 476
    .local v2, "i":I
    iget-object v5, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Certificate;

    .line 477
    .local v0, "cert":Ljava/security/Certificate;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\tcertificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 478
    const-string/jumbo v6, "\tfor  : "

    .line 477
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 478
    invoke-interface {v0}, Ljava/security/Certificate;->getPrincipal()Ljava/security/Principal;

    move-result-object v6

    .line 477
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 478
    const-string/jumbo v6, "\n"

    .line 477
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\t\t\tfrom : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 480
    invoke-interface {v0}, Ljava/security/Certificate;->getGuarantor()Ljava/security/Principal;

    move-result-object v6

    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 480
    const-string/jumbo v6, "\n"

    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_26

    .line 483
    .end local v0    # "cert":Ljava/security/Certificate;
    :cond_87
    return-object v4
.end method

.method printKeys()Ljava/lang/String;
    .registers 3

    .prologue
    .line 459
    const-string/jumbo v0, ""

    .line 460
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_b

    .line 461
    const-string/jumbo v0, "\tpublic key initialized"

    .line 465
    :goto_a
    return-object v0

    .line 463
    :cond_b
    const-string/jumbo v0, "\tno public key"

    goto :goto_a
.end method

.method public removeCertificate(Ljava/security/Certificate;)V
    .registers 3
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 298
    const-string/jumbo v0, "removeIdentityCertificate"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-eqz v0, :cond_21

    .line 302
    if-eqz p1, :cond_16

    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1c

    .line 303
    :cond_16
    new-instance v0, Ljava/security/KeyManagementException;

    invoke-direct {v0}, Ljava/security/KeyManagementException;-><init>()V

    throw v0

    .line 305
    :cond_1c
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 307
    :cond_21
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string/jumbo v0, "setIdentityInfo"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 210
    iput-object p1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 187
    const-string/jumbo v0, "setIdentityPublicKey"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 189
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 413
    const-string/jumbo v1, "printIdentity"

    invoke-static {v1}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 415
    .local v0, "printable":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_31

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_31
    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 5
    .param p1, "detailed"    # Z

    .prologue
    .line 444
    invoke-virtual {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "out":Ljava/lang/String;
    if-eqz p1, :cond_69

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Identity;->printKeys()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Identity;->printCertificates()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    if-eqz v1, :cond_6a

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    :cond_69
    :goto_69
    return-object v0

    .line 452
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\tno additional information available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_69
.end method
