.class public Lsun/security/x509/PolicyInformation;
.super Ljava/lang/Object;
.source "PolicyInformation.java"


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final NAME:Ljava/lang/String; = "PolicyInformation"

.field public static final QUALIFIERS:Ljava/lang/String; = "qualifiers"


# instance fields
.field private policyIdentifier:Lsun/security/x509/CertificatePolicyId;

.field private policyQualifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .registers 6
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x30

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v1, v3, :cond_12

    .line 104
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of PolicyInformation"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_12
    new-instance v1, Lsun/security/x509/CertificatePolicyId;

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    .line 107
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_6f

    .line 108
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    .line 109
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 110
    .local v0, "opt":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    if-eq v1, v3, :cond_41

    .line 111
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of PolicyInformation"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_41
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_52

    .line 113
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "No data available in policyQualifiers"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_52
    :goto_52
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_75

    .line 115
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    new-instance v2, Ljava/security/cert/PolicyQualifierInfo;

    .line 116
    iget-object v3, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    .line 115
    invoke-direct {v2, v3}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 118
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_6f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    .line 120
    :cond_75
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/CertificatePolicyId;Ljava/util/Set;)V
    .registers 5
    .param p1, "policyIdentifier"    # Lsun/security/x509/CertificatePolicyId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/CertificatePolicyId;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "policyQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p2, :cond_e

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "policyQualifiers is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_e
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    iput-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    .line 92
    iput-object p1, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    .line 93
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
    .line 226
    const-string/jumbo v0, "qualifiers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    .line 236
    return-void

    .line 228
    :cond_10
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 229
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute ID may not be deleted from PolicyInformation."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_22
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    const-string/jumbo v2, "] not recognized by PolicyInformation."

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .registers 8
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x30

    .line 273
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 274
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v4, v2}, Lsun/security/x509/CertificatePolicyId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 275
    iget-object v4, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    .line 276
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 277
    .local v3, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pq$iterator":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PolicyQualifierInfo;

    .line 278
    .local v0, "pq":Ljava/security/cert/PolicyQualifierInfo;
    invoke-virtual {v0}, Ljava/security/cert/PolicyQualifierInfo;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/DerOutputStream;->write([B)V

    goto :goto_1f

    .line 280
    .end local v0    # "pq":Ljava/security/cert/PolicyQualifierInfo;
    :cond_33
    invoke-virtual {v2, v5, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 282
    .end local v1    # "pq$iterator":Ljava/util/Iterator;
    .end local v3    # "tmp2":Lsun/security/util/DerOutputStream;
    :cond_36
    invoke-virtual {p1, v5, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 283
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 129
    instance-of v1, p1, Lsun/security/x509/PolicyInformation;

    if-nez v1, :cond_6

    .line 130
    return v3

    :cond_6
    move-object v0, p1

    .line 131
    check-cast v0, Lsun/security/x509/PolicyInformation;

    .line 133
    .local v0, "piOther":Lsun/security/x509/PolicyInformation;
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v0}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/x509/CertificatePolicyId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 134
    return v3

    .line 136
    :cond_16
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-virtual {v0}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 177
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    return-object v0

    .line 178
    :cond_c
    const-string/jumbo v0, "qualifiers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 179
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    return-object v0

    .line 181
    :cond_18
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    const-string/jumbo v2, "] not recognized by PolicyInformation."

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 243
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 244
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 245
    const-string/jumbo v1, "qualifiers"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    const-string/jumbo v0, "PolicyInformation"

    return-object v0
.end method

.method public getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    return-object v0
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 145
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v1}, Lsun/security/x509/CertificatePolicyId;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x25

    .line 146
    .local v0, "myhash":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 147
    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const-string/jumbo v2, "id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 192
    instance-of v2, p2, Lsun/security/x509/CertificatePolicyId;

    if-eqz v2, :cond_12

    .line 193
    check-cast p2, Lsun/security/x509/CertificatePolicyId;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    .line 220
    :goto_11
    return-void

    .line 195
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_12
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Attribute value must be instance of CertificatePolicyId."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_1b
    const-string/jumbo v2, "qualifiers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 198
    iget-object v2, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    if-nez v2, :cond_31

    .line 199
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Attribute must have a CertificatePolicyIdentifier value before PolicyQualifierInfo can be set."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_31
    instance-of v2, p2, Ljava/util/Set;

    if-eqz v2, :cond_58

    move-object v2, p2

    .line 204
    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 207
    .local v1, "obj1":Ljava/lang/Object;
    instance-of v2, v1, Ljava/security/cert/PolicyQualifierInfo;

    if-nez v2, :cond_3c

    .line 208
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Attribute value must be aSet of PolicyQualifierInfo objects."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .end local v1    # "obj1":Ljava/lang/Object;
    :cond_53
    check-cast p2, Ljava/util/Set;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    goto :goto_11

    .line 214
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_58
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Attribute value must be of type Set."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_61
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attribute name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    const-string/jumbo v4, "] not recognized by PolicyInformation"

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/PolicyInformation;->policyIdentifier:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v2}, Lsun/security/x509/CertificatePolicyId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
