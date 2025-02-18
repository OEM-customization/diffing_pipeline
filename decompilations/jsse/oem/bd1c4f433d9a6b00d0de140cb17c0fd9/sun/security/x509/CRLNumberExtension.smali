.class public Lsun/security/x509/CRLNumberExtension;
.super Lsun/security/x509/Extension;
.source "CRLNumberExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final LABEL:Ljava/lang/String; = "CRL Number"

.field public static final NAME:Ljava/lang/String; = "CRLNumber"

.field public static final NUMBER:Ljava/lang/String; = "value"


# instance fields
.field private crlNumber:Ljava/math/BigInteger;

.field private extensionLabel:Ljava/lang/String;

.field private extensionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 8
    .param p1, "crlNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 82
    const-string/jumbo v4, "CRLNumber"

    const-string/jumbo v5, "CRL Number"

    .line 81
    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 9
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v4, "CRLNumber"

    const-string/jumbo v5, "CRL Number"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 8
    .param p1, "crlNum"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v4, "CRLNumber"

    const-string/jumbo v5, "CRL Number"

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method protected constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "critical"    # Ljava/lang/Boolean;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "extensionName"    # Ljava/lang/String;
    .param p5, "extensionLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 130
    iput-object p1, p0, Lsun/security/x509/CRLNumberExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 131
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/x509/CRLNumberExtension;->critical:Z

    .line 132
    check-cast p3, [B

    .end local p3    # "value":Ljava/lang/Object;
    iput-object p3, p0, Lsun/security/x509/CRLNumberExtension;->extensionValue:[B

    .line 133
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 134
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 135
    iput-object p4, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    .line 136
    iput-object p5, p0, Lsun/security/x509/CRLNumberExtension;->extensionLabel:Ljava/lang/String;

    .line 137
    return-void
.end method

.method protected constructor <init>(Lsun/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "crlNum"    # Ljava/math/BigInteger;
    .param p4, "extensionName"    # Ljava/lang/String;
    .param p5, "extensionLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 102
    iput-object p1, p0, Lsun/security/x509/CRLNumberExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 103
    iput-boolean p2, p0, Lsun/security/x509/CRLNumberExtension;->critical:Z

    .line 104
    iput-object p3, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 105
    iput-object p4, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lsun/security/x509/CRLNumberExtension;->extensionLabel:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lsun/security/x509/CRLNumberExtension;->encodeThis()V

    .line 108
    return-void
.end method

.method private encodeThis()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    if-nez v1, :cond_8

    .line 66
    iput-object v2, p0, Lsun/security/x509/CRLNumberExtension;->extensionValue:[B

    .line 67
    return-void

    .line 69
    :cond_8
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 70
    .local v0, "os":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 71
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CRLNumberExtension;->extensionValue:[B

    .line 72
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 177
    invoke-direct {p0}, Lsun/security/x509/CRLNumberExtension;->encodeThis()V

    .line 178
    return-void

    .line 174
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name not recognized by CertAttrSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    const-string/jumbo v2, "."

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 198
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lsun/security/x509/CRLNumberExtension;->encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V

    .line 199
    return-void
.end method

.method protected encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p3, "isCritical"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 210
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->extensionValue:[B

    if-nez v1, :cond_10

    .line 211
    iput-object p2, p0, Lsun/security/x509/CRLNumberExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 212
    iput-boolean p3, p0, Lsun/security/x509/CRLNumberExtension;->critical:Z

    .line 213
    invoke-direct {p0}, Lsun/security/x509/CRLNumberExtension;->encodeThis()V

    .line 215
    :cond_10
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 216
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 217
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lsun/security/x509/CRLNumberExtension;->get(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 160
    iget-object v0, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    return-object v0

    .line 162
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name not recognized by CertAttrSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const/16 v2, 0x2e

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 225
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 226
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 144
    instance-of v0, p2, Ljava/math/BigInteger;

    if-nez v0, :cond_16

    .line 145
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute must be of type BigInteger."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_16
    check-cast p2, Ljava/math/BigInteger;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 152
    invoke-direct {p0}, Lsun/security/x509/CRLNumberExtension;->encodeThis()V

    .line 153
    return-void

    .line 149
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name not recognized by CertAttrSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, "."

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/CRLNumberExtension;->extensionLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 185
    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    if-nez v1, :cond_31

    const-string/jumbo v1, ""

    .line 184
    :goto_21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string/jumbo v2, "\n"

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "s":Ljava/lang/String;
    return-object v0

    .line 185
    .end local v0    # "s":Ljava/lang/String;
    :cond_31
    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    invoke-static {v1}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method
