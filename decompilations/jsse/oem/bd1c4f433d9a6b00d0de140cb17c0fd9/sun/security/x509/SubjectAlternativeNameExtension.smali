.class public Lsun/security/x509/SubjectAlternativeNameExtension;
.super Lsun/security/x509/Extension;
.source "SubjectAlternativeNameExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.SubjectAlternativeName"

.field public static final NAME:Ljava/lang/String; = "SubjectAlternativeName"

.field public static final SUBJECT_NAME:Ljava/lang/String; = "subject_name"


# instance fields
.field names:Lsun/security/x509/GeneralNames;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 116
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->critical:Z

    .line 118
    new-instance v0, Lsun/security/x509/GeneralNames;

    invoke-direct {v0}, Lsun/security/x509/GeneralNames;-><init>()V

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 5
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 70
    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 131
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->critical:Z

    .line 134
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionValue:[B

    .line 135
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 136
    .local v0, "val":Lsun/security/util/DerValue;
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-nez v1, :cond_27

    .line 137
    new-instance v1, Lsun/security/x509/GeneralNames;

    invoke-direct {v1}, Lsun/security/x509/GeneralNames;-><init>()V

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 138
    return-void

    .line 141
    :cond_27
    new-instance v1, Lsun/security/x509/GeneralNames;

    invoke-direct {v1, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lsun/security/x509/GeneralNames;)V
    .registers 4
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 105
    iput-object p2, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 106
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->critical:Z

    .line 108
    invoke-direct {p0}, Lsun/security/x509/SubjectAlternativeNameExtension;->encodeThis()V

    .line 109
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNames;)V
    .registers 3
    .param p1, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Lsun/security/x509/GeneralNames;)V

    .line 93
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

    .line 74
    iget-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 75
    :cond_d
    iput-object v2, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionValue:[B

    .line 76
    return-void

    .line 78
    :cond_10
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 79
    .local v0, "os":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 80
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionValue:[B

    .line 81
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
    .line 211
    const-string/jumbo v0, "subject_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 217
    invoke-direct {p0}, Lsun/security/x509/SubjectAlternativeNameExtension;->encodeThis()V

    .line 218
    return-void

    .line 214
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:SubjectAlternativeName."

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
    .line 168
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 169
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 170
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->critical:Z

    .line 172
    invoke-direct {p0}, Lsun/security/x509/SubjectAlternativeNameExtension;->encodeThis()V

    .line 174
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 175
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 176
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
    .line 195
    invoke-virtual {p0, p1}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const-string/jumbo v0, "subject_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 200
    iget-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    return-object v0

    .line 202
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:SubjectAlternativeName."

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
    .line 225
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 226
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "subject_name"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    const-string/jumbo v0, "SubjectAlternativeName"

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
    .line 182
    const-string/jumbo v0, "subject_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 183
    instance-of v0, p2, Lsun/security/x509/GeneralNames;

    if-nez v0, :cond_16

    .line 184
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type GeneralNames."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_16
    check-cast p2, Lsun/security/x509/GeneralNames;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 192
    invoke-direct {p0}, Lsun/security/x509/SubjectAlternativeNameExtension;->encodeThis()V

    .line 193
    return-void

    .line 189
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:SubjectAlternativeName."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "SubjectAlternativeName [\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    if-nez v3, :cond_45

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  null\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    return-object v2

    .line 153
    :cond_45
    iget-object v3, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralName;

    .line 154
    .local v0, "name":Lsun/security/x509/GeneralName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4f
.end method
