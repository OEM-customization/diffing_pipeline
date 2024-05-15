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
.field private static final whitelist serialVersionUID:J = 0x321904f09f5e92d3L


# instance fields
.field greylist-max-o certificates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/security/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o info:Ljava/lang/String;

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o publicKey:Ljava/security/PublicKey;

.field greylist-max-o scope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 105
    const-string v0, "restoring..."

    invoke-direct {p0, v0}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "No further information available."

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

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

.method private static greylist-max-o check(Ljava/lang/String;)V
    .registers 2
    .param p0, "directive"    # Ljava/lang/String;

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

.method private greylist-max-o keyEquals(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .registers 8
    .param p1, "aKey"    # Ljava/security/PublicKey;
    .param p2, "anotherKey"    # Ljava/security/PublicKey;

    .line 266
    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "aKeyFormat":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "anotherKeyFormat":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v3

    :goto_f
    if-nez v1, :cond_12

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    xor-int/2addr v2, v4

    if-eqz v2, :cond_17

    .line 269
    return v3

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
.method public whitelist core-platform-api test-api addCertificate(Ljava/security/Certificate;)V
    .registers 4
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 249
    const-string v0, "addIdentityCertificate"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v0, :cond_10

    .line 252
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 254
    :cond_10
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_27

    .line 255
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/security/Identity;->keyEquals(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_2d

    .line 256
    :cond_1f
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "public key different from cert public key"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_27
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 262
    :goto_2d
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public whitelist core-platform-api test-api certificates()[Ljava/security/Certificate;
    .registers 4

    .line 315
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v0, :cond_8

    .line 316
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/Certificate;

    return-object v0

    .line 318
    :cond_8
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 319
    .local v0, "len":I
    new-array v1, v0, [Ljava/security/Certificate;

    .line 320
    .local v1, "certs":[Ljava/security/Certificate;
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 321
    return-object v1
.end method

.method public final whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "identity"    # Ljava/lang/Object;

    .line 341
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 342
    return v0

    .line 345
    :cond_4
    instance-of v1, p1, Ljava/security/Identity;

    if-eqz v1, :cond_1f

    .line 346
    move-object v1, p1

    check-cast v1, Ljava/security/Identity;

    .line 347
    .local v1, "i":Ljava/security/Identity;
    invoke-virtual {p0}, Ljava/security/Identity;->fullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/Identity;->fullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 348
    return v0

    .line 350
    :cond_1a
    invoke-virtual {p0, v1}, Ljava/security/Identity;->identityEquals(Ljava/security/Identity;)Z

    move-result v0

    return v0

    .line 353
    .end local v1    # "i":Ljava/security/Identity;
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o fullName()Ljava/lang/String;
    .registers 4

    .line 388
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 389
    .local v0, "parsable":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_20

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    :cond_20
    return-object v0
.end method

.method public whitelist core-platform-api test-api getInfo()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getName()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 161
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getScope()Ljava/security/IdentityScope;
    .registers 2

    .line 150
    iget-object v0, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 492
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected whitelist core-platform-api test-api identityEquals(Ljava/security/Identity;)Z
    .registers 6
    .param p1, "identity"    # Ljava/security/Identity;

    .line 370
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v1, p1, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 371
    return v1

    .line 373
    :cond_c
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    const/4 v2, 0x1

    if-nez v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    iget-object v3, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v3, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    xor-int/2addr v0, v3

    if-eqz v0, :cond_1f

    .line 374
    return v1

    .line 376
    :cond_1f
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_2e

    iget-object v3, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v3, :cond_2e

    .line 377
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 378
    return v1

    .line 380
    :cond_2e
    return v2
.end method

.method greylist-max-o printCertificates()Ljava/lang/String;
    .registers 8

    .line 469
    const-string v0, ""

    .line 470
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v1, :cond_9

    .line 471
    const-string v1, "\tno certificates"

    return-object v1

    .line 473
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tcertificates: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    const/4 v1, 0x1

    .line 476
    .local v1, "i":I
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Certificate;

    .line 477
    .local v3, "cert":Ljava/security/Certificate;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\tcertificate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tfor  : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-interface {v3}, Ljava/security/Certificate;->getPrincipal()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\t\t\tfrom : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-interface {v3}, Ljava/security/Certificate;->getGuarantor()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .end local v3    # "cert":Ljava/security/Certificate;
    move v1, v5

    goto :goto_21

    .line 483
    .end local v5    # "i":I
    :cond_71
    return-object v0
.end method

.method greylist-max-o printKeys()Ljava/lang/String;
    .registers 3

    .line 459
    const-string v0, ""

    .line 460
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_9

    .line 461
    const-string v0, "\tpublic key initialized"

    goto :goto_b

    .line 463
    :cond_9
    const-string v0, "\tno public key"

    .line 465
    :goto_b
    return-object v0
.end method

.method public whitelist core-platform-api test-api removeCertificate(Ljava/security/Certificate;)V
    .registers 3
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 298
    const-string v0, "removeIdentityCertificate"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-eqz v0, :cond_1d

    .line 302
    if-eqz p1, :cond_17

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 305
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 303
    :cond_17
    new-instance v0, Ljava/security/KeyManagementException;

    invoke-direct {v0}, Ljava/security/KeyManagementException;-><init>()V

    throw v0

    .line 307
    :cond_1d
    :goto_1d
    return-void
.end method

.method public whitelist core-platform-api test-api setInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/String;

    .line 209
    const-string v0, "setIdentityInfo"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 210
    iput-object p1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public whitelist core-platform-api test-api setPublicKey(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 187
    const-string v0, "setIdentityPublicKey"

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

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 413
    const-string v0, "printIdentity"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 415
    .local v0, "printable":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_2a

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_2a
    return-object v0
.end method

.method public whitelist core-platform-api test-api toString(Z)Ljava/lang/String;
    .registers 6
    .param p1, "detailed"    # Z

    .line 444
    invoke-virtual {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "out":Ljava/lang/String;
    if-eqz p1, :cond_6c

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/Identity;->printKeys()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/Identity;->printCertificates()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    if-eqz v1, :cond_5b

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6c

    .line 452
    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tno additional information available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    :cond_6c
    :goto_6c
    return-object v0
.end method
