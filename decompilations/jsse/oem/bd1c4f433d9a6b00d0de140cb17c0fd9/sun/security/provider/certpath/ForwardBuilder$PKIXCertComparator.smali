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
        "Ljava/util/Comparator",
        "<",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# static fields
.field static final METHOD_NME:Ljava/lang/String; = "PKIXCertComparator.compare()"


# instance fields
.field private final certSkidSelector:Ljava/security/cert/X509CertSelector;

.field private final trustedSubjectDNs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lsun/security/x509/X509CertImpl;)V
    .registers 4
    .param p2, "previousCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
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

    .prologue
    .line 437
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

.method private getSelector(Lsun/security/x509/X509CertImpl;)Ljava/security/cert/X509CertSelector;
    .registers 6
    .param p1, "previousCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 449
    if-eqz p1, :cond_18

    .line 451
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    .line 452
    .local v0, "akidExt":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_18

    .line 453
    invoke-virtual {v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->getEncodedKeyIdentifier()[B

    move-result-object v2

    .line 454
    .local v2, "skid":[B
    if-eqz v2, :cond_18

    .line 455
    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 456
    .local v1, "selector":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    .line 457
    return-object v1

    .line 461
    .end local v0    # "akidExt":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v1    # "selector":Ljava/security/cert/X509CertSelector;
    .end local v2    # "skid":[B
    :cond_18
    return-object v3
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 464
    check-cast p1, Ljava/security/cert/X509Certificate;

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .registers 29
    .param p1, "oCert1"    # Ljava/security/cert/X509Certificate;
    .param p2, "oCert2"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 483
    invoke-virtual/range {p1 .. p2}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v23, 0x0

    return v23

    .line 486
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->certSkidSelector:Ljava/security/cert/X509CertSelector;

    move-object/from16 v23, v0

    if-eqz v23, :cond_37

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->certSkidSelector:Ljava/security/cert/X509CertSelector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v23

    if-eqz v23, :cond_24

    .line 488
    const/16 v23, -0x1

    return v23

    .line 490
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->certSkidSelector:Ljava/security/cert/X509CertSelector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v23

    if-eqz v23, :cond_37

    .line 491
    const/16 v23, 0x1

    return v23

    .line 495
    :cond_37
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 496
    .local v2, "cIssuer1":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 497
    .local v4, "cIssuer2":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v2}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v3

    .line 498
    .local v3, "cIssuer1Name":Lsun/security/x509/X500Name;
    invoke-static {v4}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v5

    .line 500
    .local v5, "cIssuer2Name":Lsun/security/x509/X500Name;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_87

    .line 501
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() o1 Issuer:  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() o2 Issuer:  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 508
    :cond_87
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_97

    .line 509
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() MATCH TRUSTED SUBJECT TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 512
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    .line 513
    .local v16, "m1":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 514
    .local v17, "m2":Z
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_f3

    .line 515
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() m1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() m2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 518
    :cond_f3
    if-eqz v16, :cond_fa

    if-eqz v17, :cond_fa

    .line 519
    const/16 v23, -0x1

    return v23

    .line 520
    :cond_fa
    if-eqz v16, :cond_ff

    .line 521
    const/16 v23, -0x1

    return v23

    .line 522
    :cond_ff
    if-eqz v17, :cond_104

    .line 523
    const/16 v23, 0x1

    return v23

    .line 529
    :cond_104
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_114

    .line 530
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() NAMING DESCENDANT TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 532
    :cond_114
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "tSubject$iterator":Ljava/util/Iterator;
    :cond_11e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1a1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavax/security/auth/x500/X500Principal;

    .line 533
    .local v20, "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v22

    .line 535
    .local v22, "tSubjectName":Lsun/security/x509/X500Name;
    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v12

    .line 537
    .local v12, "distanceTto1":I
    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v13

    .line 538
    .local v13, "distanceTto2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_182

    .line 539
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 542
    :cond_182
    if-gtz v12, :cond_186

    if-lez v13, :cond_11e

    .line 543
    :cond_186
    if-ne v12, v13, :cond_18b

    .line 544
    const/16 v23, -0x1

    return v23

    .line 545
    :cond_18b
    if-lez v12, :cond_192

    if-gtz v13, :cond_192

    .line 546
    const/16 v23, -0x1

    return v23

    .line 547
    :cond_192
    if-gtz v12, :cond_199

    if-lez v13, :cond_199

    .line 548
    const/16 v23, 0x1

    return v23

    .line 549
    :cond_199
    if-ge v12, v13, :cond_19e

    .line 550
    const/16 v23, -0x1

    return v23

    .line 552
    :cond_19e
    const/16 v23, 0x1

    return v23

    .line 560
    .end local v12    # "distanceTto1":I
    .end local v13    # "distanceTto2":I
    .end local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    :cond_1a1
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_1b1

    .line 561
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() NAMING ANCESTOR TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 563
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1bb
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_240

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavax/security/auth/x500/X500Principal;

    .line 564
    .restart local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v22

    .line 567
    .restart local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    const v23, 0x7fffffff

    .line 566
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v12

    .line 569
    .restart local v12    # "distanceTto1":I
    const v23, 0x7fffffff

    .line 568
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v13

    .line 570
    .restart local v13    # "distanceTto2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_221

    .line 571
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 574
    :cond_221
    if-ltz v12, :cond_225

    if-gez v13, :cond_1bb

    .line 575
    :cond_225
    if-ne v12, v13, :cond_22a

    .line 576
    const/16 v23, -0x1

    return v23

    .line 577
    :cond_22a
    if-gez v12, :cond_231

    if-ltz v13, :cond_231

    .line 578
    const/16 v23, -0x1

    return v23

    .line 579
    :cond_231
    if-ltz v12, :cond_238

    if-gez v13, :cond_238

    .line 580
    const/16 v23, 0x1

    return v23

    .line 581
    :cond_238
    if-le v12, v13, :cond_23d

    .line 582
    const/16 v23, -0x1

    return v23

    .line 584
    :cond_23d
    const/16 v23, 0x1

    return v23

    .line 593
    .end local v12    # "distanceTto1":I
    .end local v13    # "distanceTto2":I
    .end local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    :cond_240
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_250

    .line 594
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() SAME NAMESPACE AS TRUSTED TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 596
    :cond_250
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_25a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_32a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavax/security/auth/x500/X500Principal;

    .line 597
    .restart local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v22

    .line 598
    .restart local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    move-result-object v18

    .line 599
    .local v18, "tAo1":Lsun/security/x509/X500Name;
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    move-result-object v19

    .line 600
    .local v19, "tAo2":Lsun/security/x509/X500Name;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_2ba

    .line 601
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() tAo1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() tAo2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 604
    :cond_2ba
    if-nez v18, :cond_2be

    if-eqz v19, :cond_25a

    .line 605
    :cond_2be
    if-eqz v18, :cond_322

    if-eqz v19, :cond_322

    .line 607
    const v23, 0x7fffffff

    .line 606
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v14

    .line 609
    .local v14, "hopsTto1":I
    const v23, 0x7fffffff

    .line 608
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v15

    .line 610
    .local v15, "hopsTto2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_318

    .line 611
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() hopsTto1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 612
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() hopsTto2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 614
    :cond_318
    if-eq v14, v15, :cond_25a

    .line 615
    if-le v14, v15, :cond_31f

    .line 616
    const/16 v23, 0x1

    return v23

    .line 618
    :cond_31f
    const/16 v23, -0x1

    return v23

    .line 620
    .end local v14    # "hopsTto1":I
    .end local v15    # "hopsTto2":I
    :cond_322
    if-nez v18, :cond_327

    .line 621
    const/16 v23, 0x1

    return v23

    .line 623
    :cond_327
    const/16 v23, -0x1

    return v23

    .line 632
    .end local v18    # "tAo1":Lsun/security/x509/X500Name;
    .end local v19    # "tAo2":Lsun/security/x509/X500Name;
    .end local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    :cond_32a
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_33a

    .line 633
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() CERT ISSUER/SUBJECT COMPARISON TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 635
    :cond_33a
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 636
    .local v6, "cSubject1":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    .line 637
    .local v8, "cSubject2":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v6}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v7

    .line 638
    .local v7, "cSubject1Name":Lsun/security/x509/X500Name;
    invoke-static {v8}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v9

    .line 640
    .local v9, "cSubject2Name":Lsun/security/x509/X500Name;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_38a

    .line 641
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() o1 Subject: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 642
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() o2 Subject: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 645
    :cond_38a
    const v23, 0x7fffffff

    .line 644
    move/from16 v0, v23

    invoke-static {v7, v3, v0}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v10

    .line 647
    .local v10, "distanceStoI1":I
    const v23, 0x7fffffff

    .line 646
    move/from16 v0, v23

    invoke-static {v9, v5, v0}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v11

    .line 648
    .local v11, "distanceStoI2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_3dc

    .line 649
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceStoI1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 650
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceStoI2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 652
    :cond_3dc
    if-le v11, v10, :cond_3e1

    .line 653
    const/16 v23, -0x1

    return v23

    .line 654
    :cond_3e1
    if-ge v11, v10, :cond_3e6

    .line 655
    const/16 v23, 0x1

    return v23

    .line 660
    :cond_3e6
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_3f6

    .line 661
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() no tests matched; RETURN 0"

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 663
    :cond_3f6
    const/16 v23, -0x1

    return v23
.end method
