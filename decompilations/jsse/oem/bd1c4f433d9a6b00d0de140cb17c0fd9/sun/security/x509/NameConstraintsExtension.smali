.class public Lsun/security/x509/NameConstraintsExtension;
.super Lsun/security/x509/Extension;
.source "NameConstraintsExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final EXCLUDED_SUBTREES:Ljava/lang/String; = "excluded_subtrees"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.NameConstraints"

.field public static final NAME:Ljava/lang/String; = "NameConstraints"

.field public static final PERMITTED_SUBTREES:Ljava/lang/String; = "permitted_subtrees"

.field private static final TAG_EXCLUDED:B = 0x1t

.field private static final TAG_PERMITTED:B


# instance fields
.field private excluded:Lsun/security/x509/GeneralSubtrees;

.field private hasMax:Z

.field private hasMin:Z

.field private minMaxValid:Z

.field private permitted:Lsun/security/x509/GeneralSubtrees;


# direct methods
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
    const/16 v4, 0x30

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 81
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 82
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 86
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 169
    sget-object v2, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    .line 172
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    .line 173
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 174
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v4, :cond_2f

    .line 175
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding for NameConstraintsExtension."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_2f
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-nez v2, :cond_3e

    .line 186
    return-void

    .line 195
    .local v0, "opt":Lsun/security/util/DerValue;
    :cond_34
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 196
    new-instance v2, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v2, v0}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 187
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_3e
    :goto_3e
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_93

    .line 188
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 190
    .restart local v0    # "opt":Lsun/security/util/DerValue;
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 191
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_34

    .line 192
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate permitted GeneralSubtrees in NameConstraintsExtension."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_65
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 199
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    .line 198
    if-eqz v2, :cond_8a

    .line 200
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_7f

    .line 201
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate excluded GeneralSubtrees in NameConstraintsExtension."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_7f
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 205
    new-instance v2, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v2, v0}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    goto :goto_3e

    .line 207
    :cond_8a
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of NameConstraintsExtension."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_93
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 211
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralSubtrees;Lsun/security/x509/GeneralSubtrees;)V
    .registers 4
    .param p1, "permitted"    # Lsun/security/x509/GeneralSubtrees;
    .param p2, "excluded"    # Lsun/security/x509/GeneralSubtrees;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 81
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 82
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 151
    iput-object p1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 152
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 154
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    .line 156
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 157
    return-void
.end method

.method private calcMinMax()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 90
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    .line 91
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    .line 92
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_2d

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 94
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v1

    .line 95
    .local v1, "subtree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMinimum()I

    move-result v2

    if-eqz v2, :cond_22

    .line 96
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    .line 97
    :cond_22
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMaximum()I

    move-result v2

    if-eq v2, v4, :cond_2a

    .line 98
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    .line 93
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 102
    .end local v0    # "i":I
    .end local v1    # "subtree":Lsun/security/x509/GeneralSubtree;
    :cond_2d
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_53

    .line 103
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_32
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v2

    if-ge v0, v2, :cond_53

    .line 104
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v1

    .line 105
    .restart local v1    # "subtree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMinimum()I

    move-result v2

    if-eqz v2, :cond_48

    .line 106
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    .line 107
    :cond_48
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMaximum()I

    move-result v2

    if-eq v2, v4, :cond_50

    .line 108
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    .line 103
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 111
    .end local v0    # "i":I
    .end local v1    # "subtree":Lsun/security/x509/GeneralSubtree;
    :cond_53
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 112
    return-void
.end method

.method private encodeThis()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0x80

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    iput-boolean v7, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 117
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-nez v3, :cond_12

    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-nez v3, :cond_12

    .line 118
    iput-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    .line 119
    return-void

    .line 121
    :cond_12
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 123
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 124
    .local v1, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v3, :cond_31

    .line 125
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 126
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3, v2}, Lsun/security/x509/GeneralSubtrees;->encode(Lsun/security/util/DerOutputStream;)V

    .line 127
    invoke-static {v6, v5, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 130
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_31
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v3, :cond_46

    .line 131
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 132
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3, v2}, Lsun/security/x509/GeneralSubtrees;->encode(Lsun/security/util/DerOutputStream;)V

    .line 133
    invoke-static {v6, v5, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 136
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_46
    const/16 v3, 0x30

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 137
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    .line 138
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 599
    :try_start_0
    invoke-super {p0}, Lsun/security/x509/Extension;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/NameConstraintsExtension;

    .line 601
    .local v1, "newNCE":Lsun/security/x509/NameConstraintsExtension;
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_14

    .line 602
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    iput-object v2, v1, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 604
    :cond_14
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_22

    .line 605
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    iput-object v2, v1, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;
    :try_end_22
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_22} :catch_23

    .line 607
    :cond_22
    return-object v1

    .line 608
    .end local v1    # "newNCE":Lsun/security/x509/NameConstraintsExtension;
    :catch_23
    move-exception v0

    .line 609
    .local v0, "cnsee":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "CloneNotSupportedException while cloning NameConstraintsException. This should never happen."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
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
    const/4 v1, 0x0

    .line 283
    const-string/jumbo v0, "permitted_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 284
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 291
    :goto_c
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 292
    return-void

    .line 285
    :cond_10
    const-string/jumbo v0, "excluded_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 286
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    goto :goto_c

    .line 288
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

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
    .line 232
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 233
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 234
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    .line 236
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 238
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 239
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 240
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
    .line 265
    invoke-virtual {p0, p1}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const-string/jumbo v0, "permitted_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 270
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    return-object v0

    .line 271
    :cond_c
    const-string/jumbo v0, "excluded_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 272
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    return-object v0

    .line 274
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

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
    .line 299
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 300
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "permitted_subtrees"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 301
    const-string/jumbo v1, "excluded_subtrees"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 303
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    const-string/jumbo v0, "NameConstraints"

    return-object v0
.end method

.method public merge(Lsun/security/x509/NameConstraintsExtension;)V
    .registers 6
    .param p1, "newConstraints"    # Lsun/security/x509/NameConstraintsExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 338
    if-nez p1, :cond_4

    .line 340
    return-void

    .line 349
    :cond_4
    const-string/jumbo v2, "excluded_subtrees"

    invoke-virtual {p1, v2}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v0

    .line 350
    .local v0, "newExcluded":Lsun/security/x509/GeneralSubtrees;
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-nez v2, :cond_3f

    .line 351
    if-eqz v0, :cond_3d

    .line 352
    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    .line 351
    :goto_17
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 366
    :cond_19
    :goto_19
    const-string/jumbo v2, "permitted_subtrees"

    invoke-virtual {p1, v2}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v1

    .line 367
    .local v1, "newPermitted":Lsun/security/x509/GeneralSubtrees;
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-nez v2, :cond_49

    .line 368
    if-eqz v1, :cond_47

    .line 369
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    .line 368
    :goto_2c
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 390
    :cond_2e
    :goto_2e
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_39

    .line 391
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v3}, Lsun/security/x509/GeneralSubtrees;->reduce(Lsun/security/x509/GeneralSubtrees;)V

    .line 396
    :cond_39
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 398
    return-void

    .end local v1    # "newPermitted":Lsun/security/x509/GeneralSubtrees;
    :cond_3d
    move-object v2, v3

    .line 352
    goto :goto_17

    .line 354
    :cond_3f
    if-eqz v0, :cond_19

    .line 356
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    goto :goto_19

    .restart local v1    # "newPermitted":Lsun/security/x509/GeneralSubtrees;
    :cond_47
    move-object v2, v3

    .line 369
    goto :goto_2c

    .line 371
    :cond_49
    if-eqz v1, :cond_2e

    .line 373
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v1}, Lsun/security/x509/GeneralSubtrees;->intersect(Lsun/security/x509/GeneralSubtrees;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_2e

    .line 377
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_5d

    .line 378
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    goto :goto_2e

    .line 380
    :cond_5d
    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    goto :goto_2e
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
    .line 246
    const-string/jumbo v0, "permitted_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 247
    instance-of v0, p2, Lsun/security/x509/GeneralSubtrees;

    if-nez v0, :cond_16

    .line 248
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type GeneralSubtrees."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_16
    check-cast p2, Lsun/security/x509/GeneralSubtrees;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 262
    :goto_1a
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 263
    return-void

    .line 252
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1e
    const-string/jumbo v0, "excluded_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 253
    instance-of v0, p2, Lsun/security/x509/GeneralSubtrees;

    if-nez v0, :cond_34

    .line 254
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type GeneralSubtrees."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_34
    check-cast p2, Lsun/security/x509/GeneralSubtrees;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    goto :goto_1a

    .line 259
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_39
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "NameConstraints: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-nez v0, :cond_36

    const-string/jumbo v0, ""

    .line 217
    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-nez v0, :cond_51

    const-string/jumbo v0, ""

    .line 217
    :goto_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string/jumbo v1, "   ]\n"

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n    Permitted:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 221
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n    Excluded:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method public verify(Ljava/security/cert/X509Certificate;)Z
    .registers 13
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 414
    if-nez p1, :cond_c

    .line 415
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Certificate is null"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 419
    :cond_c
    iget-boolean v8, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    if-nez v8, :cond_13

    .line 420
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->calcMinMax()V

    .line 423
    :cond_13
    iget-boolean v8, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    if-eqz v8, :cond_20

    .line 424
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Non-zero minimum BaseDistance in name constraints not supported"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 428
    :cond_20
    iget-boolean v8, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    if-eqz v8, :cond_2d

    .line 429
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Maximum BaseDistance in name constraints not supported"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 433
    :cond_2d
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 434
    .local v7, "subjectPrincipal":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v7}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v6

    .line 436
    .local v6, "subject":Lsun/security/x509/X500Name;
    invoke-virtual {v6}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_42

    .line 437
    invoke-virtual {p0, v6}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v8

    if-nez v8, :cond_42

    .line 438
    return v9

    .line 442
    :cond_42
    const/4 v2, 0x0

    .line 447
    .local v2, "altNames":Lsun/security/x509/GeneralNames;
    :try_start_43
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v4

    .line 449
    .local v4, "certImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v1

    .line 450
    .local v1, "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-eqz v1, :cond_54

    .line 454
    const-string/jumbo v8, "subject_name"

    .line 453
    invoke-virtual {v1, v8}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_53
    .catch Ljava/security/cert/CertificateException; {:try_start_43 .. :try_end_53} :catch_5b

    move-result-object v2

    .line 465
    .end local v2    # "altNames":Lsun/security/x509/GeneralNames;
    :cond_54
    if-nez v2, :cond_7a

    .line 466
    invoke-virtual {p0, v6}, Lsun/security/x509/NameConstraintsExtension;->verifyRFC822SpecialCase(Lsun/security/x509/X500Name;)Z

    move-result v8

    return v8

    .line 456
    .end local v1    # "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v4    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v2    # "altNames":Lsun/security/x509/GeneralNames;
    :catch_5b
    move-exception v3

    .line 457
    .local v3, "ce":Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to extract extensions from certificate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 458
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 457
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 470
    .end local v2    # "altNames":Lsun/security/x509/GeneralNames;
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .restart local v4    # "certImpl":Lsun/security/x509/X509CertImpl;
    :cond_7a
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7b
    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->size()I

    move-result v8

    if-ge v5, v8, :cond_93

    .line 471
    invoke-virtual {v2, v5}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 472
    .local v0, "altGNI":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p0, v0}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v8

    if-nez v8, :cond_90

    .line 473
    return v9

    .line 470
    :cond_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 478
    .end local v0    # "altGNI":Lsun/security/x509/GeneralNameInterface;
    :cond_93
    const/4 v8, 0x1

    return v8
.end method

.method public verify(Lsun/security/x509/GeneralNameInterface;)Z
    .registers 11
    .param p1, "name"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 491
    if-nez p1, :cond_d

    .line 492
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "name is null"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 496
    :cond_d
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v6, :cond_42

    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v6}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v6

    if-lez v6, :cond_42

    .line 498
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v6}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v6

    if-ge v3, v6, :cond_42

    .line 499
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v6, v3}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v2

    .line 500
    .local v2, "gs":Lsun/security/x509/GeneralSubtree;
    if-nez v2, :cond_2d

    .line 498
    :cond_2a
    :goto_2a
    :pswitch_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 502
    :cond_2d
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v1

    .line 503
    .local v1, "gn":Lsun/security/x509/GeneralName;
    if-eqz v1, :cond_2a

    .line 505
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 506
    .local v0, "exName":Lsun/security/x509/GeneralNameInterface;
    if-eqz v0, :cond_2a

    .line 511
    invoke-interface {v0, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v6

    packed-switch v6, :pswitch_data_7e

    goto :goto_2a

    .line 518
    :pswitch_41
    return v7

    .line 524
    .end local v0    # "exName":Lsun/security/x509/GeneralNameInterface;
    .end local v1    # "gn":Lsun/security/x509/GeneralName;
    .end local v2    # "gs":Lsun/security/x509/GeneralSubtree;
    .end local v3    # "i":I
    :cond_42
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v6, :cond_7d

    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v6}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v6

    if-lez v6, :cond_7d

    .line 526
    const/4 v5, 0x0

    .line 528
    .local v5, "sameType":Z
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_50
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v6}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v6

    if-ge v3, v6, :cond_7a

    .line 529
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v6, v3}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v2

    .line 530
    .restart local v2    # "gs":Lsun/security/x509/GeneralSubtree;
    if-nez v2, :cond_63

    .line 528
    :cond_60
    :goto_60
    :pswitch_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 532
    :cond_63
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v1

    .line 533
    .restart local v1    # "gn":Lsun/security/x509/GeneralName;
    if-eqz v1, :cond_60

    .line 535
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 536
    .local v4, "perName":Lsun/security/x509/GeneralNameInterface;
    if-eqz v4, :cond_60

    .line 542
    invoke-interface {v4, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v6

    packed-switch v6, :pswitch_data_8c

    goto :goto_60

    .line 552
    :pswitch_77
    return v8

    .line 547
    :pswitch_78
    const/4 v5, 0x1

    .line 548
    goto :goto_60

    .line 555
    .end local v1    # "gn":Lsun/security/x509/GeneralName;
    .end local v2    # "gs":Lsun/security/x509/GeneralSubtree;
    .end local v4    # "perName":Lsun/security/x509/GeneralNameInterface;
    :cond_7a
    if-eqz v5, :cond_7d

    .line 556
    return v7

    .line 559
    .end local v3    # "i":I
    .end local v5    # "sameType":Z
    :cond_7d
    return v8

    .line 511
    :pswitch_data_7e
    .packed-switch -0x1
        :pswitch_2a
        :pswitch_41
        :pswitch_41
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    .line 542
    :pswitch_data_8c
    .packed-switch -0x1
        :pswitch_60
        :pswitch_77
        :pswitch_77
        :pswitch_78
        :pswitch_78
    .end packed-switch
.end method

.method public verifyRFC822SpecialCase(Lsun/security/x509/X500Name;)Z
    .registers 9
    .param p1, "subject"    # Lsun/security/x509/X500Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p1}, Lsun/security/x509/X500Name;->allAvas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ava$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/AVA;

    .line 574
    .local v2, "ava":Lsun/security/x509/AVA;
    invoke-virtual {v2}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 575
    .local v0, "attrOID":Lsun/security/util/ObjectIdentifier;
    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v6}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 576
    invoke-virtual {v2}, Lsun/security/x509/AVA;->getValueString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "attrValue":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 580
    :try_start_26
    new-instance v4, Lsun/security/x509/RFC822Name;

    invoke-direct {v4, v1}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_35

    .line 584
    .local v4, "emailName":Lsun/security/x509/RFC822Name;
    invoke-virtual {p0, v4}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 585
    const/4 v6, 0x0

    return v6

    .line 590
    .end local v0    # "attrOID":Lsun/security/util/ObjectIdentifier;
    .end local v1    # "attrValue":Ljava/lang/String;
    .end local v2    # "ava":Lsun/security/x509/AVA;
    .end local v4    # "emailName":Lsun/security/x509/RFC822Name;
    :cond_33
    const/4 v6, 0x1

    return v6

    .line 581
    .restart local v0    # "attrOID":Lsun/security/util/ObjectIdentifier;
    .restart local v1    # "attrValue":Ljava/lang/String;
    .restart local v2    # "ava":Lsun/security/x509/AVA;
    :catch_35
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    goto :goto_8
.end method
