.class Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;
.super Ljava/lang/Object;
.source "ForwardBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/ForwardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PKIXCertComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# static fields
.field static final blacklist METHOD_NME:Ljava/lang/String; = "PKIXCertComparator.compare()"


# instance fields
.field private final blacklist certSkidSelector:Ljava/security/cert/X509CertSelector;

.field private final blacklist trustedSubjectDNs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Set;Lsun/security/x509/X509CertImpl;)V
    .registers 4
    .param p2, "previousCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Lsun/security/x509/X509CertImpl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    .local p1, "trustedSubjectDNs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/security/auth/x500/X500Principal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    .line 440
    invoke-direct {p0, p2}, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->getSelector(Lsun/security/x509/X509CertImpl;)Ljava/security/cert/X509CertSelector;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->certSkidSelector:Ljava/security/cert/X509CertSelector;

    .line 441
    return-void
.end method

.method private blacklist getSelector(Lsun/security/x509/X509CertImpl;)Ljava/security/cert/X509CertSelector;
    .registers 5
    .param p1, "previousCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    if-eqz p1, :cond_18

    .line 450
    nop

    .line 451
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    .line 452
    .local v0, "akidExt":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_18

    .line 453
    invoke-virtual {v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->getEncodedKeyIdentifier()[B

    move-result-object v1

    .line 454
    .local v1, "skid":[B
    if-eqz v1, :cond_18

    .line 455
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 456
    .local v2, "selector":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v2, v1}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    .line 457
    return-object v2

    .line 461
    .end local v0    # "akidExt":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v1    # "skid":[B
    .end local v2    # "selector":Ljava/security/cert/X509CertSelector;
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 430
    check-cast p1, Ljava/security/cert/X509Certificate;

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result p1

    return p1
.end method

.method public blacklist compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .registers 21
    .param p1, "oCert1"    # Ljava/security/cert/X509Certificate;
    .param p2, "oCert2"    # Ljava/security/cert/X509Certificate;

    .line 483
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p2}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    return v1

    .line 486
    :cond_a
    iget-object v1, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->certSkidSelector:Ljava/security/cert/X509CertSelector;

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_24

    .line 487
    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 488
    return v3

    .line 490
    :cond_19
    iget-object v1, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->certSkidSelector:Ljava/security/cert/X509CertSelector;

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 491
    return v2

    .line 486
    :cond_24
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 495
    :cond_28
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 496
    .local v1, "cIssuer1":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 497
    .local v6, "cIssuer2":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v1}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v7

    .line 498
    .local v7, "cIssuer1Name":Lsun/security/x509/X500Name;
    invoke-static {v6}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v8

    .line 500
    .local v8, "cIssuer2Name":Lsun/security/x509/X500Name;
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v9

    if-eqz v9, :cond_6e

    .line 501
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PKIXCertComparator.compare() o1 Issuer:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 502
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PKIXCertComparator.compare() o2 Issuer:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 508
    :cond_6e
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v9

    if-eqz v9, :cond_7d

    .line 509
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v9

    const-string v10, "PKIXCertComparator.compare() MATCH TRUSTED SUBJECT TEST..."

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 512
    :cond_7d
    iget-object v9, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 513
    .local v9, "m1":Z
    iget-object v10, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 514
    .local v10, "m2":Z
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v11

    if-eqz v11, :cond_bf

    .line 515
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PKIXCertComparator.compare() m1: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 516
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PKIXCertComparator.compare() m2: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 518
    :cond_bf
    if-eqz v9, :cond_c4

    if-eqz v10, :cond_c4

    .line 519
    return v3

    .line 520
    :cond_c4
    if-eqz v9, :cond_c7

    .line 521
    return v3

    .line 522
    :cond_c7
    if-eqz v10, :cond_ca

    .line 523
    return v2

    .line 529
    :cond_ca
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v11

    if-eqz v11, :cond_d9

    .line 530
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v11

    const-string v12, "PKIXCertComparator.compare() NAMING DESCENDANT TEST..."

    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 532
    :cond_d9
    iget-object v11, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_df
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "PKIXCertComparator.compare() distanceTto2: "

    const-string v14, "PKIXCertComparator.compare() distanceTto1: "

    if-eqz v12, :cond_153

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/security/auth/x500/X500Principal;

    .line 533
    .local v12, "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v12}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v15

    .line 534
    .local v15, "tSubjectName":Lsun/security/x509/X500Name;
    nop

    .line 535
    invoke-static {v15, v7, v3}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v2

    .line 536
    .local v2, "distanceTto1":I
    nop

    .line 537
    move-object/from16 v16, v1

    .end local v1    # "cIssuer1":Ljavax/security/auth/x500/X500Principal;
    .local v16, "cIssuer1":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v15, v8, v3}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v1

    .line 538
    .local v1, "distanceTto2":I
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v17

    if-eqz v17, :cond_131

    .line 539
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 540
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 542
    :cond_131
    if-gtz v2, :cond_13d

    if-lez v1, :cond_136

    goto :goto_13d

    .line 555
    .end local v1    # "distanceTto2":I
    .end local v2    # "distanceTto1":I
    .end local v12    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v15    # "tSubjectName":Lsun/security/x509/X500Name;
    :cond_136
    move-object/from16 v4, p1

    move-object/from16 v1, v16

    const/4 v2, 0x1

    const/4 v3, -0x1

    goto :goto_df

    .line 543
    .restart local v1    # "distanceTto2":I
    .restart local v2    # "distanceTto1":I
    .restart local v12    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local v15    # "tSubjectName":Lsun/security/x509/X500Name;
    :cond_13d
    :goto_13d
    if-ne v2, v1, :cond_141

    .line 544
    const/4 v3, -0x1

    return v3

    .line 545
    :cond_141
    const/4 v3, -0x1

    if-lez v2, :cond_147

    if-gtz v1, :cond_147

    .line 546
    return v3

    .line 547
    :cond_147
    if-gtz v2, :cond_14d

    if-lez v1, :cond_14d

    .line 548
    const/4 v3, 0x1

    return v3

    .line 547
    :cond_14d
    const/4 v3, 0x1

    .line 549
    if-ge v2, v1, :cond_152

    .line 550
    const/4 v3, -0x1

    return v3

    .line 552
    :cond_152
    return v3

    .line 560
    .end local v2    # "distanceTto1":I
    .end local v12    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v15    # "tSubjectName":Lsun/security/x509/X500Name;
    .end local v16    # "cIssuer1":Ljavax/security/auth/x500/X500Principal;
    .local v1, "cIssuer1":Ljavax/security/auth/x500/X500Principal;
    :cond_153
    move-object/from16 v16, v1

    .end local v1    # "cIssuer1":Ljavax/security/auth/x500/X500Principal;
    .restart local v16    # "cIssuer1":Ljavax/security/auth/x500/X500Principal;
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v1

    if-eqz v1, :cond_164

    .line 561
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v1

    const-string v2, "PKIXCertComparator.compare() NAMING ANCESTOR TEST..."

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 563
    :cond_164
    iget-object v1, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const v3, 0x7fffffff

    if-eqz v2, :cond_1d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    .line 564
    .local v2, "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v2}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v4

    .line 566
    .local v4, "tSubjectName":Lsun/security/x509/X500Name;
    nop

    .line 567
    invoke-static {v4, v7, v3}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v11

    .line 568
    .local v11, "distanceTto1":I
    nop

    .line 569
    invoke-static {v4, v8, v3}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v3

    .line 570
    .local v3, "distanceTto2":I
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v12

    if-eqz v12, :cond_1b9

    .line 571
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 572
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 574
    :cond_1b9
    if-ltz v11, :cond_1bf

    if-gez v3, :cond_1be

    goto :goto_1bf

    .line 587
    .end local v2    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "distanceTto2":I
    .end local v4    # "tSubjectName":Lsun/security/x509/X500Name;
    .end local v11    # "distanceTto1":I
    :cond_1be
    goto :goto_16a

    .line 575
    .restart local v2    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local v3    # "distanceTto2":I
    .restart local v4    # "tSubjectName":Lsun/security/x509/X500Name;
    .restart local v11    # "distanceTto1":I
    :cond_1bf
    :goto_1bf
    if-ne v11, v3, :cond_1c3

    .line 576
    const/4 v1, -0x1

    return v1

    .line 577
    :cond_1c3
    const/4 v1, -0x1

    if-gez v11, :cond_1c9

    if-ltz v3, :cond_1c9

    .line 578
    return v1

    .line 579
    :cond_1c9
    if-ltz v11, :cond_1cf

    if-gez v3, :cond_1cf

    .line 580
    const/4 v1, 0x1

    return v1

    .line 579
    :cond_1cf
    const/4 v1, 0x1

    .line 581
    if-le v11, v3, :cond_1d4

    .line 582
    const/4 v1, -0x1

    return v1

    .line 584
    :cond_1d4
    return v1

    .line 593
    .end local v2    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "distanceTto2":I
    .end local v4    # "tSubjectName":Lsun/security/x509/X500Name;
    .end local v11    # "distanceTto1":I
    :cond_1d5
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v1

    if-eqz v1, :cond_1e4

    .line 594
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v1

    const-string v2, "PKIXCertComparator.compare() SAME NAMESPACE AS TRUSTED TEST..."

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 596
    :cond_1e4
    iget-object v1, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    .line 597
    .restart local v2    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v2}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v4

    .line 598
    .restart local v4    # "tSubjectName":Lsun/security/x509/X500Name;
    invoke-virtual {v4, v7}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    move-result-object v11

    .line 599
    .local v11, "tAo1":Lsun/security/x509/X500Name;
    invoke-virtual {v4, v8}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    move-result-object v12

    .line 600
    .local v12, "tAo2":Lsun/security/x509/X500Name;
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v13

    if-eqz v13, :cond_240

    .line 601
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PKIXCertComparator.compare() tAo1: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 602
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PKIXCertComparator.compare() tAo2: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 604
    :cond_240
    if-nez v11, :cond_244

    if-eqz v12, :cond_28b

    .line 605
    :cond_244
    if-eqz v11, :cond_298

    if-eqz v12, :cond_298

    .line 606
    nop

    .line 607
    invoke-static {v4, v7, v3}, Lsun/security/provider/certpath/Builder;->hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v13

    .line 608
    .local v13, "hopsTto1":I
    nop

    .line 609
    invoke-static {v4, v8, v3}, Lsun/security/provider/certpath/Builder;->hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v14

    .line 610
    .local v14, "hopsTto2":I
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v15

    if-eqz v15, :cond_288

    .line 611
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PKIXCertComparator.compare() hopsTto1: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 612
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PKIXCertComparator.compare() hopsTto2: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 614
    :cond_288
    if-ne v13, v14, :cond_292

    .line 620
    .end local v13    # "hopsTto1":I
    .end local v14    # "hopsTto2":I
    nop

    .line 626
    .end local v2    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v4    # "tSubjectName":Lsun/security/x509/X500Name;
    .end local v11    # "tAo1":Lsun/security/x509/X500Name;
    .end local v12    # "tAo2":Lsun/security/x509/X500Name;
    :cond_28b
    const v3, 0x7fffffff

    move-object/from16 v0, p0

    goto/16 :goto_1ea

    .line 615
    .restart local v2    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .restart local v4    # "tSubjectName":Lsun/security/x509/X500Name;
    .restart local v11    # "tAo1":Lsun/security/x509/X500Name;
    .restart local v12    # "tAo2":Lsun/security/x509/X500Name;
    .restart local v13    # "hopsTto1":I
    .restart local v14    # "hopsTto2":I
    :cond_292
    if-le v13, v14, :cond_296

    .line 616
    const/4 v0, 0x1

    return v0

    .line 618
    :cond_296
    const/4 v1, -0x1

    return v1

    .line 605
    .end local v13    # "hopsTto1":I
    .end local v14    # "hopsTto2":I
    :cond_298
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 620
    if-nez v11, :cond_29d

    .line 621
    return v0

    .line 623
    :cond_29d
    return v1

    .line 632
    .end local v2    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v4    # "tSubjectName":Lsun/security/x509/X500Name;
    .end local v11    # "tAo1":Lsun/security/x509/X500Name;
    .end local v12    # "tAo2":Lsun/security/x509/X500Name;
    :cond_29e
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_2ad

    .line 633
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v0

    const-string v1, "PKIXCertComparator.compare() CERT ISSUER/SUBJECT COMPARISON TEST..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 635
    :cond_2ad
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 636
    .local v0, "cSubject1":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 637
    .local v1, "cSubject2":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v0}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v2

    .line 638
    .local v2, "cSubject1Name":Lsun/security/x509/X500Name;
    invoke-static {v1}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v3

    .line 640
    .local v3, "cSubject2Name":Lsun/security/x509/X500Name;
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v4

    if-eqz v4, :cond_2f3

    .line 641
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PKIXCertComparator.compare() o1 Subject: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 642
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PKIXCertComparator.compare() o2 Subject: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 644
    :cond_2f3
    nop

    .line 645
    const v4, 0x7fffffff

    invoke-static {v2, v7, v4}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v11

    .line 646
    .local v11, "distanceStoI1":I
    nop

    .line 647
    invoke-static {v3, v8, v4}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v4

    .line 648
    .local v4, "distanceStoI2":I
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v12

    if-eqz v12, :cond_336

    .line 649
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PKIXCertComparator.compare() distanceStoI1: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 650
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PKIXCertComparator.compare() distanceStoI2: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 652
    :cond_336
    if-le v4, v11, :cond_33a

    .line 653
    const/4 v12, -0x1

    return v12

    .line 654
    :cond_33a
    if-ge v4, v11, :cond_33e

    .line 655
    const/4 v12, 0x1

    return v12

    .line 660
    :cond_33e
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v12

    if-eqz v12, :cond_34d

    .line 661
    # getter for: Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->access$000()Lsun/security/util/Debug;

    move-result-object v12

    const-string v13, "PKIXCertComparator.compare() no tests matched; RETURN 0"

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 663
    :cond_34d
    const/4 v12, -0x1

    return v12
.end method
