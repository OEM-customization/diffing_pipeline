.class public Lsun/security/x509/PolicyMappingsExtension;
.super Lsun/security/x509/Extension;
.source "PolicyMappingsExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.PolicyMappings"

.field public static final MAP:Ljava/lang/String; = "map"

.field public static final NAME:Ljava/lang/String; = "PolicyMappings"


# instance fields
.field private maps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/CertificatePolicyMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 103
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/PolicyMappingsExtension;->critical:Z

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 8
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 118
    sget-object v3, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v3, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/PolicyMappingsExtension;->critical:Z

    .line 121
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionValue:[B

    .line 122
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionValue:[B

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 123
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_27

    .line 124
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid encoding for PolicyMappingsExtension."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    .line 128
    :goto_2e
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_47

    .line 129
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 130
    .local v1, "seq":Lsun/security/util/DerValue;
    new-instance v0, Lsun/security/x509/CertificatePolicyMap;

    invoke-direct {v0, v1}, Lsun/security/x509/CertificatePolicyMap;-><init>(Lsun/security/util/DerValue;)V

    .line 131
    .local v0, "map":Lsun/security/x509/CertificatePolicyMap;
    iget-object v3, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 133
    .end local v0    # "map":Lsun/security/x509/CertificatePolicyMap;
    .end local v1    # "seq":Lsun/security/util/DerValue;
    :cond_47
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/CertificatePolicyMap;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "map":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 93
    iput-object p1, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    .line 94
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/PolicyMappingsExtension;->critical:Z

    .line 96
    invoke-direct {p0}, Lsun/security/x509/PolicyMappingsExtension;->encodeThis()V

    .line 97
    return-void
.end method

.method private encodeThis()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 71
    iget-object v4, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 72
    :cond_d
    iput-object v5, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionValue:[B

    .line 73
    return-void

    .line 75
    :cond_10
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 76
    .local v2, "os":Lsun/security/util/DerOutputStream;
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 78
    .local v3, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "map$iterator":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertificatePolicyMap;

    .line 79
    .local v0, "map":Lsun/security/x509/CertificatePolicyMap;
    invoke-virtual {v0, v3}, Lsun/security/x509/CertificatePolicyMap;->encode(Lsun/security/util/DerOutputStream;)V

    goto :goto_20

    .line 82
    .end local v0    # "map":Lsun/security/x509/CertificatePolicyMap;
    :cond_30
    const/16 v4, 0x30

    invoke-virtual {v2, v4, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 83
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionValue:[B

    .line 84
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    const-string/jumbo v0, "map"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    .line 203
    invoke-direct {p0}, Lsun/security/x509/PolicyMappingsExtension;->encodeThis()V

    .line 204
    return-void

    .line 200
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PolicyMappingsExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 154
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 155
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/PolicyMappingsExtension;->critical:Z

    .line 157
    invoke-direct {p0}, Lsun/security/x509/PolicyMappingsExtension;->encodeThis()V

    .line 159
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 160
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 161
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
    .line 181
    invoke-virtual {p0, p1}, Lsun/security/x509/PolicyMappingsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/CertificatePolicyMap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const-string/jumbo v0, "map"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 186
    iget-object v0, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    return-object v0

    .line 188
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PolicyMappingsExtension."

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
    .line 211
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 212
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "map"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    const-string/jumbo v0, "PolicyMappings"

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
    .line 168
    const-string/jumbo v0, "map"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 169
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_16

    .line 170
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type List."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_16
    check-cast p2, Ljava/util/List;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    .line 178
    invoke-direct {p0}, Lsun/security/x509/PolicyMappingsExtension;->encodeThis()V

    .line 179
    return-void

    .line 175
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PolicyMappingsExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 139
    iget-object v1, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    if-nez v1, :cond_8

    const-string/jumbo v1, ""

    return-object v1

    .line 140
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PolicyMappings [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string/jumbo v2, "]\n"

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
