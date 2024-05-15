.class public Lsun/security/x509/GeneralSubtrees;
.super Ljava/lang/Object;
.source "GeneralSubtrees.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final NAME_DIFF_TYPE:I = -0x1

.field private static final NAME_MATCH:I = 0x0

.field private static final NAME_NARROWS:I = 0x1

.field private static final NAME_SAME_TYPE:I = 0x3

.field private static final NAME_WIDENS:I = 0x2


# instance fields
.field private final trees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    .line 63
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .registers 6
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    .line 76
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_12

    .line 77
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of GeneralSubtrees."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_12
    :goto_12
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_29

    .line 80
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 81
    .local v0, "opt":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/GeneralSubtree;

    invoke-direct {v1, v0}, Lsun/security/x509/GeneralSubtree;-><init>(Lsun/security/util/DerValue;)V

    .line 82
    .local v1, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    goto :goto_12

    .line 84
    .end local v0    # "opt":Lsun/security/util/DerValue;
    .end local v1    # "tree":Lsun/security/x509/GeneralSubtree;
    :cond_29
    return-void
.end method

.method private constructor <init>(Lsun/security/x509/GeneralSubtrees;)V
    .registers 4
    .param p1, "source"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    .line 67
    return-void
.end method

.method private createWidestSubtree(Lsun/security/x509/GeneralNameInterface;)Lsun/security/x509/GeneralSubtree;
    .registers 8
    .param p1, "name"    # Lsun/security/x509/GeneralNameInterface;

    .prologue
    .line 246
    :try_start_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_ce

    .line 279
    new-instance v3, Ljava/io/IOException;

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported GeneralNameInterface type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_25

    .line 283
    .end local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    :catch_25
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_40
    :try_start_40
    check-cast p1, Lsun/security/x509/OtherName;

    .end local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/OtherName;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    .line 251
    .local v2, "otherOID":Lsun/security/util/ObjectIdentifier;
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/OtherName;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/ObjectIdentifier;[B)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 282
    .end local v2    # "otherOID":Lsun/security/util/ObjectIdentifier;
    .local v1, "newName":Lsun/security/x509/GeneralName;
    :goto_51
    new-instance v3, Lsun/security/x509/GeneralSubtree;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v3, v1, v4, v5}, Lsun/security/x509/GeneralSubtree;-><init>(Lsun/security/x509/GeneralName;II)V

    return-object v3

    .line 254
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    .restart local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_59
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/RFC822Name;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 255
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_51

    .line 257
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_67
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/DNSName;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 258
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_51

    .line 260
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_75
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v4, Lsun/security/x509/X400Address;

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v3}, Lsun/security/x509/X400Address;-><init>([B)V

    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 261
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_51

    .line 263
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_83
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/X500Name;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 264
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_51

    .line 266
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_91
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/EDIPartyName;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/EDIPartyName;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 267
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_51

    .line 269
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_9f
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/URIName;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 270
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_51

    .line 272
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_ad
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v4, Lsun/security/x509/IPAddressName;

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v3}, Lsun/security/x509/IPAddressName;-><init>([B)V

    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 273
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_51

    .line 275
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_bb
    new-instance v1, Lsun/security/x509/GeneralName;

    .line 276
    new-instance v4, Lsun/security/x509/OIDName;

    new-instance v5, Lsun/security/util/ObjectIdentifier;

    const/4 v3, 0x0

    check-cast v3, [I

    invoke-direct {v5, v3}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    invoke-direct {v4, v5}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/ObjectIdentifier;)V

    .line 275
    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_cd} :catch_25

    .line 277
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_51

    .line 246
    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_40
        :pswitch_59
        :pswitch_67
        :pswitch_75
        :pswitch_83
        :pswitch_91
        :pswitch_9f
        :pswitch_ad
        :pswitch_bb
    .end packed-switch
.end method

.method private getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;
    .registers 3
    .param p1, "ndx"    # I

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    return-object v0
.end method

.method private static getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;
    .registers 3
    .param p0, "gs"    # Lsun/security/x509/GeneralSubtree;

    .prologue
    .line 179
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v0

    .line 180
    .local v0, "gn":Lsun/security/x509/GeneralName;
    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    .line 181
    .local v1, "gni":Lsun/security/x509/GeneralNameInterface;
    return-object v1
.end method

.method private minimize()V
    .registers 7

    .prologue
    .line 194
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_37

    .line 195
    invoke-direct {p0, v1}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 196
    .local v0, "current":Lsun/security/x509/GeneralNameInterface;
    const/4 v3, 0x0

    .line 199
    .local v3, "remove1":Z
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_10
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v5

    if-ge v2, v5, :cond_21

    .line 200
    invoke-direct {p0, v2}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 201
    .local v4, "subsequent":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v0, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    packed-switch v5, :pswitch_data_38

    .line 227
    .end local v4    # "subsequent":Lsun/security/x509/GeneralNameInterface;
    :cond_21
    :goto_21
    if-eqz v3, :cond_28

    .line 228
    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 229
    add-int/lit8 v1, v1, -0x1

    .line 194
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    .restart local v4    # "subsequent":Lsun/security/x509/GeneralNameInterface;
    :pswitch_2b
    const/4 v3, 0x1

    .line 208
    goto :goto_21

    .line 212
    :pswitch_2d
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 213
    add-int/lit8 v2, v2, -0x1

    .line 199
    :pswitch_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 218
    :pswitch_35
    const/4 v3, 0x1

    .line 219
    goto :goto_21

    .line 233
    .end local v0    # "current":Lsun/security/x509/GeneralNameInterface;
    .end local v2    # "j":I
    .end local v3    # "remove1":Z
    .end local v4    # "subsequent":Lsun/security/x509/GeneralNameInterface;
    :cond_37
    return-void

    .line 201
    :pswitch_data_38
    .packed-switch -0x1
        :pswitch_32
        :pswitch_2b
        :pswitch_2d
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method


# virtual methods
.method public add(Lsun/security/x509/GeneralSubtree;)V
    .registers 3
    .param p1, "tree"    # Lsun/security/x509/GeneralSubtree;

    .prologue
    .line 95
    if-nez p1, :cond_8

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 98
    :cond_8
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 121
    new-instance v0, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v0, p0}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/x509/GeneralSubtrees;)V

    return-object v0
.end method

.method public contains(Lsun/security/x509/GeneralSubtree;)Z
    .registers 3
    .param p1, "tree"    # Lsun/security/x509/GeneralSubtree;

    .prologue
    .line 102
    if-nez p1, :cond_8

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 105
    :cond_8
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .registers 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 140
    .local v2, "seq":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v1

    .local v1, "n":I
    :goto_a
    if-ge v0, v1, :cond_16

    .line 141
    invoke-virtual {p0, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun/security/x509/GeneralSubtree;->encode(Lsun/security/util/DerOutputStream;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 143
    :cond_16
    const/16 v3, 0x30

    invoke-virtual {p1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 144
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 154
    if-ne p0, p1, :cond_4

    .line 155
    const/4 v1, 0x1

    return v1

    .line 157
    :cond_4
    instance-of v1, p1, Lsun/security/x509/GeneralSubtrees;

    if-nez v1, :cond_a

    .line 158
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 160
    check-cast v0, Lsun/security/x509/GeneralSubtrees;

    .line 161
    .local v0, "other":Lsun/security/x509/GeneralSubtrees;
    iget-object v1, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    iget-object v2, v0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(I)Lsun/security/x509/GeneralSubtree;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralSubtree;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public intersect(Lsun/security/x509/GeneralSubtrees;)Lsun/security/x509/GeneralSubtrees;
    .registers 22
    .param p1, "other"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 322
    if-nez p1, :cond_b

    .line 323
    new-instance v18, Ljava/lang/NullPointerException;

    const-string/jumbo v19, "other GeneralSubtrees must not be null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 326
    :cond_b
    new-instance v9, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v9}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    .line 327
    .local v9, "newThis":Lsun/security/x509/GeneralSubtrees;
    const/4 v8, 0x0

    .line 331
    .local v8, "newExcluded":Lsun/security/x509/GeneralSubtrees;
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    if-nez v18, :cond_1d

    .line 332
    invoke-virtual/range {p0 .. p1}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    .line 333
    const/16 v18, 0x0

    return-object v18

    .line 339
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    .line 340
    invoke-direct/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    .line 350
    const/4 v4, 0x0

    .end local v8    # "newExcluded":Lsun/security/x509/GeneralSubtrees;
    .local v4, "i":I
    :goto_24
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_d3

    .line 351
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v16

    .line 352
    .local v16, "thisEntry":Lsun/security/x509/GeneralNameInterface;
    const/4 v13, 0x0

    .line 359
    .local v13, "removeThisEntry":Z
    const/4 v14, 0x0

    .line 360
    .local v14, "sameType":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_35
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_5e

    .line 361
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v12

    .line 363
    .local v12, "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    invoke-static {v12}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v11

    .line 364
    .local v11, "otherEntry":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v18

    packed-switch v18, :pswitch_data_11c

    .line 360
    :goto_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 366
    :pswitch_53
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 367
    add-int/lit8 v4, v4, -0x1

    .line 368
    invoke-virtual {v9, v12}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 369
    const/4 v14, 0x0

    .line 389
    .end local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    :cond_5e
    :goto_5e
    if-eqz v14, :cond_cf

    .line 395
    const/4 v5, 0x0

    .line 396
    .local v5, "intersection":Z
    const/4 v6, 0x0

    :goto_62
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_aa

    .line 397
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v15

    .line 399
    .local v15, "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v15}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v18

    invoke-interface/range {v16 .. v16}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9a

    .line 400
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_7f
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_9a

    .line 402
    move-object/from16 v0, p1

    invoke-direct {v0, v7}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v10

    .line 405
    .local v10, "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v15, v10}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v2

    .line 406
    .local v2, "constraintType":I
    if-eqz v2, :cond_99

    .line 407
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v2, v0, :cond_a1

    .line 409
    :cond_99
    const/4 v5, 0x1

    .line 396
    .end local v2    # "constraintType":I
    .end local v7    # "k":I
    .end local v10    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_9a
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 372
    .end local v5    # "intersection":Z
    .end local v15    # "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    .restart local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .restart local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    :pswitch_9d
    const/4 v14, 0x1

    .line 373
    goto :goto_50

    .line 376
    :pswitch_9f
    const/4 v14, 0x0

    .line 377
    goto :goto_5e

    .line 408
    .end local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    .restart local v2    # "constraintType":I
    .restart local v5    # "intersection":Z
    .restart local v7    # "k":I
    .restart local v10    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    .restart local v15    # "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_a1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_99

    .line 400
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f

    .line 415
    .end local v2    # "constraintType":I
    .end local v7    # "k":I
    .end local v10    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v15    # "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_aa
    if-nez v5, :cond_c8

    .line 416
    if-nez v8, :cond_b3

    .line 417
    new-instance v8, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v8}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    .line 420
    :cond_b3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lsun/security/x509/GeneralSubtrees;->createWidestSubtree(Lsun/security/x509/GeneralNameInterface;)Lsun/security/x509/GeneralSubtree;

    move-result-object v17

    .line 421
    .local v17, "widestSubtree":Lsun/security/x509/GeneralSubtree;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lsun/security/x509/GeneralSubtrees;->contains(Lsun/security/x509/GeneralSubtree;)Z

    move-result v18

    if-nez v18, :cond_c8

    .line 422
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 427
    .end local v17    # "widestSubtree":Lsun/security/x509/GeneralSubtree;
    :cond_c8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 428
    add-int/lit8 v4, v4, -0x1

    .line 350
    .end local v5    # "intersection":Z
    :cond_cf
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_24

    .line 433
    .end local v6    # "j":I
    .end local v13    # "removeThisEntry":Z
    .end local v14    # "sameType":Z
    .end local v16    # "thisEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_d3
    invoke-virtual {v9}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    if-lez v18, :cond_de

    .line 434
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    .line 439
    :cond_de
    const/4 v4, 0x0

    :goto_df
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_11a

    .line 440
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v12

    .line 441
    .restart local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    invoke-static {v12}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v11

    .line 442
    .restart local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    const/4 v3, 0x0

    .line 443
    .local v3, "diffType":Z
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_f3
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_110

    .line 444
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v16

    .line 445
    .restart local v16    # "thisEntry":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v18

    packed-switch v18, :pswitch_data_128

    .line 443
    :goto_10a
    add-int/lit8 v6, v6, 0x1

    goto :goto_f3

    .line 447
    :pswitch_10d
    const/4 v3, 0x1

    .line 450
    goto :goto_10a

    .line 455
    :pswitch_10f
    const/4 v3, 0x0

    .line 464
    .end local v16    # "thisEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_110
    if-eqz v3, :cond_117

    .line 465
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 439
    :cond_117
    add-int/lit8 v4, v4, 0x1

    goto :goto_df

    .line 470
    .end local v3    # "diffType":Z
    .end local v6    # "j":I
    .end local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    :cond_11a
    return-object v8

    .line 364
    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_53
        :pswitch_9f
        :pswitch_9d
    .end packed-switch

    .line 445
    :pswitch_data_128
    .packed-switch -0x1
        :pswitch_10d
        :pswitch_10f
        :pswitch_10f
        :pswitch_10f
        :pswitch_10f
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reduce(Lsun/security/x509/GeneralSubtrees;)V
    .registers 8
    .param p1, "excluded"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 497
    if-nez p1, :cond_3

    .line 498
    return-void

    .line 500
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v3

    .local v3, "n":I
    :goto_8
    if-ge v1, v3, :cond_32

    .line 501
    invoke-direct {p1, v1}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 502
    .local v0, "excludedName":Lsun/security/x509/GeneralNameInterface;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_f
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v5

    if-ge v2, v5, :cond_2f

    .line 503
    invoke-direct {p0, v2}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 504
    .local v4, "permitted":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v0, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    packed-switch v5, :pswitch_data_34

    .line 502
    :goto_20
    :pswitch_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 508
    :pswitch_23
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 509
    add-int/lit8 v2, v2, -0x1

    .line 510
    goto :goto_20

    .line 513
    :pswitch_29
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 514
    add-int/lit8 v2, v2, -0x1

    .line 515
    goto :goto_20

    .line 500
    .end local v4    # "permitted":Lsun/security/x509/GeneralNameInterface;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 524
    .end local v0    # "excludedName":Lsun/security/x509/GeneralNameInterface;
    .end local v2    # "j":I
    :cond_32
    return-void

    .line 504
    nop

    :pswitch_data_34
    .packed-switch -0x1
        :pswitch_20
        :pswitch_23
        :pswitch_29
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public remove(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "   GeneralSubtrees:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

.method public trees()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    return-object v0
.end method

.method public union(Lsun/security/x509/GeneralSubtrees;)V
    .registers 5
    .param p1, "other"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 479
    if-eqz p1, :cond_16

    .line 480
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v1

    .local v1, "n":I
    :goto_7
    if-ge v0, v1, :cond_13

    .line 481
    invoke-virtual {p1, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 484
    :cond_13
    invoke-direct {p0}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    .line 486
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_16
    return-void
.end method
