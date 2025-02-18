.class public Lsun/security/x509/CertificateVersion;
.super Ljava/lang/Object;
.source "CertificateVersion.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.version"

.field public static final NAME:Ljava/lang/String; = "version"

.field public static final V1:I = 0x0

.field public static final V2:I = 0x1

.field public static final V3:I = 0x2

.field public static final VERSION:Ljava/lang/String; = "number"


# instance fields
.field version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 90
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 91
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 102
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 103
    :cond_b
    iput p1, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 108
    return-void

    .line 102
    :cond_e
    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    .line 105
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "X.509 Certificate version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    const-string/jumbo v2, " not supported.\n"

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 130
    iput v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 131
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 133
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateVersion;->construct(Lsun/security/util/DerValue;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .registers 4
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 117
    iput v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 118
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 120
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateVersion;->construct(Lsun/security/util/DerValue;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 143
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 145
    invoke-direct {p0, p1}, Lsun/security/x509/CertificateVersion;->construct(Lsun/security/util/DerValue;)V

    .line 146
    return-void
.end method

.method private construct(Lsun/security/util/DerValue;)V
    .registers 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 77
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getInteger()I

    move-result v0

    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 79
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_29

    .line 80
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "X.509 version, bad format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_29
    return-void
.end method

.method private getVersion()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    return v0
.end method


# virtual methods
.method public compare(I)I
    .registers 3
    .param p1, "vers"    # I

    .prologue
    .line 237
    iget v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const-string/jumbo v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 213
    return-void

    .line 210
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 163
    iget v2, p0, Lsun/security/x509/CertificateVersion;->version:I

    if-nez v2, :cond_6

    .line 164
    return-void

    .line 166
    :cond_6
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 167
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget v2, p0, Lsun/security/x509/CertificateVersion;->version:I

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 169
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 170
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    const/16 v2, -0x80

    const/4 v3, 0x1

    invoke-static {v2, v3, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 173
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 174
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const-string/jumbo v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 196
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {p0}, Lsun/security/x509/CertificateVersion;->getVersion()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 198
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 191
    invoke-virtual {p0, p1}, Lsun/security/x509/CertificateVersion;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
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
    .line 220
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 221
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    const-string/jumbo v0, "version"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_d

    .line 181
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute must be of type Integer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_d
    const-string/jumbo v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 184
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 189
    return-void

    .line 186
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Version: V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
