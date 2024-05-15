.class public Lsun/security/x509/GeneralSubtrees;
.super Ljava/lang/Object;
.source "GeneralSubtrees.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final greylist-max-o NAME_DIFF_TYPE:I = -0x1

.field private static final greylist-max-o NAME_MATCH:I = 0x0

.field private static final greylist-max-o NAME_NARROWS:I = 0x1

.field private static final greylist-max-o NAME_SAME_TYPE:I = 0x3

.field private static final greylist-max-o NAME_WIDENS:I = 0x2


# instance fields
.field private final greylist-max-o trees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 4
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    .line 76
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_21

    .line 79
    :goto_9
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_20

    .line 80
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 81
    .local v0, "opt":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/GeneralSubtree;

    invoke-direct {v1, v0}, Lsun/security/x509/GeneralSubtree;-><init>(Lsun/security/util/DerValue;)V

    .line 82
    .local v1, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 83
    .end local v0    # "opt":Lsun/security/util/DerValue;
    .end local v1    # "tree":Lsun/security/x509/GeneralSubtree;
    goto :goto_9

    .line 84
    :cond_20
    return-void

    .line 77
    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of GeneralSubtrees."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Lsun/security/x509/GeneralSubtrees;)V
    .registers 4
    .param p1, "source"    # Lsun/security/x509/GeneralSubtrees;

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

.method private greylist-max-o createWidestSubtree(Lsun/security/x509/GeneralNameInterface;)Lsun/security/x509/GeneralSubtree;
    .registers 6
    .param p1, "name"    # Lsun/security/x509/GeneralNameInterface;

    .line 246
    :try_start_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_a5

    const/4 v1, 0x0

    const-string v2, ""

    packed-switch v0, :pswitch_data_be

    .line 279
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    goto/16 :goto_8c

    .line 275
    :pswitch_e
    new-instance v0, Lsun/security/x509/GeneralName;

    new-instance v2, Lsun/security/x509/OIDName;

    new-instance v3, Lsun/security/util/ObjectIdentifier;

    check-cast v1, [I

    invoke-direct {v3, v1}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    invoke-direct {v2, v3}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-direct {v0, v2}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 277
    .local v0, "newName":Lsun/security/x509/GeneralName;
    goto :goto_84

    .line 272
    .end local v0    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_20
    new-instance v0, Lsun/security/x509/GeneralName;

    new-instance v2, Lsun/security/x509/IPAddressName;

    check-cast v1, [B

    invoke-direct {v2, v1}, Lsun/security/x509/IPAddressName;-><init>([B)V

    invoke-direct {v0, v2}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 273
    .restart local v0    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_84

    .line 269
    .end local v0    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_2d
    new-instance v0, Lsun/security/x509/GeneralName;

    new-instance v1, Lsun/security/x509/URIName;

    invoke-direct {v1, v2}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 270
    .restart local v0    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_84

    .line 266
    .end local v0    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_38
    new-instance v0, Lsun/security/x509/GeneralName;

    new-instance v1, Lsun/security/x509/EDIPartyName;

    invoke-direct {v1, v2}, Lsun/security/x509/EDIPartyName;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 267
    .restart local v0    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_84

    .line 263
    .end local v0    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_43
    new-instance v0, Lsun/security/x509/GeneralName;

    new-instance v1, Lsun/security/x509/X500Name;

    invoke-direct {v1, v2}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 264
    .restart local v0    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_84

    .line 260
    .end local v0    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_4e
    new-instance v0, Lsun/security/x509/GeneralName;

    new-instance v2, Lsun/security/x509/X400Address;

    check-cast v1, [B

    invoke-direct {v2, v1}, Lsun/security/x509/X400Address;-><init>([B)V

    invoke-direct {v0, v2}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 261
    .restart local v0    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_84

    .line 257
    .end local v0    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_5b
    new-instance v0, Lsun/security/x509/GeneralName;

    new-instance v1, Lsun/security/x509/DNSName;

    invoke-direct {v1, v2}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 258
    .restart local v0    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_84

    .line 254
    .end local v0    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_66
    new-instance v0, Lsun/security/x509/GeneralName;

    new-instance v1, Lsun/security/x509/RFC822Name;

    invoke-direct {v1, v2}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 255
    .restart local v0    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_84

    .line 250
    .end local v0    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_71
    move-object v0, p1

    check-cast v0, Lsun/security/x509/OtherName;

    invoke-virtual {v0}, Lsun/security/x509/OtherName;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 251
    .local v0, "otherOID":Lsun/security/util/ObjectIdentifier;
    new-instance v2, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/OtherName;

    invoke-direct {v3, v0, v1}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/ObjectIdentifier;[B)V

    invoke-direct {v2, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    move-object v1, v2

    .line 252
    .local v1, "newName":Lsun/security/x509/GeneralName;
    move-object v0, v1

    .line 282
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    .local v0, "newName":Lsun/security/x509/GeneralName;
    :goto_84
    new-instance v1, Lsun/security/x509/GeneralSubtree;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, v0, v2, v3}, Lsun/security/x509/GeneralSubtree;-><init>(Lsun/security/x509/GeneralName;II)V

    return-object v1

    .line 279
    .end local v0    # "newName":Lsun/security/x509/GeneralName;
    :goto_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported GeneralNameInterface type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/GeneralSubtrees;
    .end local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    throw v0
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a5} :catch_a5

    .line 283
    .restart local p0    # "this":Lsun/security/x509/GeneralSubtrees;
    .restart local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    :catch_a5
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_71
        :pswitch_66
        :pswitch_5b
        :pswitch_4e
        :pswitch_43
        :pswitch_38
        :pswitch_2d
        :pswitch_20
        :pswitch_e
    .end packed-switch
.end method

.method private greylist-max-o getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;
    .registers 3
    .param p1, "ndx"    # I

    .line 175
    invoke-virtual {p0, p1}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;
    .registers 3
    .param p0, "gs"    # Lsun/security/x509/GeneralSubtree;

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

.method private greylist-max-o minimize()V
    .registers 9

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_44

    .line 195
    invoke-direct {p0, v0}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    .line 196
    .local v1, "current":Lsun/security/x509/GeneralNameInterface;
    const/4 v3, 0x0

    .line 199
    .local v3, "remove1":Z
    add-int/lit8 v4, v0, 0x1

    .local v4, "j":I
    :goto_10
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v5

    if-ge v4, v5, :cond_3b

    .line 200
    invoke-direct {p0, v4}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v5

    .line 201
    .local v5, "subsequent":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v1, v5}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_38

    if-eqz v6, :cond_35

    if-eq v6, v2, :cond_2f

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2d

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2c

    goto :goto_37

    .line 222
    :cond_2c
    goto :goto_39

    .line 218
    :cond_2d
    const/4 v3, 0x1

    .line 219
    goto :goto_37

    .line 212
    :cond_2f
    invoke-virtual {p0, v4}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 213
    add-int/lit8 v4, v4, -0x1

    .line 214
    goto :goto_39

    .line 207
    :cond_35
    const/4 v3, 0x1

    .line 208
    nop

    .line 224
    :goto_37
    goto :goto_3b

    .line 204
    :cond_38
    nop

    .line 199
    .end local v5    # "subsequent":Lsun/security/x509/GeneralNameInterface;
    :goto_39
    add-int/2addr v4, v2

    goto :goto_10

    .line 227
    .end local v4    # "j":I
    :cond_3b
    :goto_3b
    if-eqz v3, :cond_42

    .line 228
    invoke-virtual {p0, v0}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 229
    add-int/lit8 v0, v0, -0x1

    .line 194
    .end local v1    # "current":Lsun/security/x509/GeneralNameInterface;
    .end local v3    # "remove1":Z
    :cond_42
    add-int/2addr v0, v2

    goto :goto_1

    .line 233
    .end local v0    # "i":I
    :cond_44
    return-void
.end method


# virtual methods
.method public blacklist add(Lsun/security/x509/GeneralSubtree;)V
    .registers 3
    .param p1, "tree"    # Lsun/security/x509/GeneralSubtree;

    .line 95
    if-eqz p1, :cond_8

    .line 98
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void

    .line 96
    :cond_8
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 2

    .line 121
    new-instance v0, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v0, p0}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/x509/GeneralSubtrees;)V

    return-object v0
.end method

.method public blacklist contains(Lsun/security/x509/GeneralSubtree;)Z
    .registers 3
    .param p1, "tree"    # Lsun/security/x509/GeneralSubtree;

    .line 102
    if-eqz p1, :cond_9

    .line 105
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 103
    :cond_9
    const/4 v0, 0x0

    throw v0
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 140
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v2

    .local v2, "n":I
    :goto_a
    if-ge v1, v2, :cond_16

    .line 141
    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v3

    invoke-virtual {v3, v0}, Lsun/security/x509/GeneralSubtree;->encode(Lsun/security/util/DerOutputStream;)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 143
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_16
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 144
    return-void
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 154
    if-ne p0, p1, :cond_4

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_4
    instance-of v0, p1, Lsun/security/x509/GeneralSubtrees;

    if-nez v0, :cond_a

    .line 158
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/x509/GeneralSubtrees;

    .line 161
    .local v0, "other":Lsun/security/x509/GeneralSubtrees;
    iget-object v1, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    iget-object v2, v0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist get(I)Lsun/security/x509/GeneralSubtree;
    .registers 3
    .param p1, "index"    # I

    .line 87
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralSubtree;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 165
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist intersect(Lsun/security/x509/GeneralSubtrees;)Lsun/security/x509/GeneralSubtrees;
    .registers 16
    .param p1, "other"    # Lsun/security/x509/GeneralSubtrees;

    .line 322
    if-eqz p1, :cond_f1

    .line 326
    new-instance v0, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v0}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    .line 327
    .local v0, "newThis":Lsun/security/x509/GeneralSubtrees;
    const/4 v1, 0x0

    .line 331
    .local v1, "newExcluded":Lsun/security/x509/GeneralSubtrees;
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v2

    if-nez v2, :cond_13

    .line 332
    invoke-virtual {p0, p1}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    .line 333
    const/4 v2, 0x0

    return-object v2

    .line 339
    :cond_13
    invoke-direct {p0}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    .line 340
    invoke-direct {p1}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    .line 350
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v3, :cond_ad

    .line 351
    invoke-direct {p0, v2}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v3

    .line 352
    .local v3, "thisEntry":Lsun/security/x509/GeneralNameInterface;
    const/4 v7, 0x0

    .line 359
    .local v7, "removeThisEntry":Z
    const/4 v8, 0x0

    .line 360
    .local v8, "sameType":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2a
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v10

    if-ge v9, v10, :cond_56

    .line 361
    invoke-virtual {p1, v9}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v10

    .line 362
    .local v10, "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    nop

    .line 363
    invoke-static {v10}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v11

    .line 364
    .local v11, "otherEntry":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v3, v11}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v12

    if-eqz v12, :cond_55

    if-eq v12, v6, :cond_4b

    if-eq v12, v5, :cond_55

    if-eq v12, v4, :cond_46

    .line 380
    goto :goto_48

    .line 372
    :cond_46
    const/4 v8, 0x1

    .line 373
    nop

    .line 360
    .end local v10    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    .end local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    :goto_48
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 366
    .restart local v10    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    .restart local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_4b
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 367
    add-int/lit8 v2, v2, -0x1

    .line 368
    invoke-virtual {v0, v10}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 369
    const/4 v8, 0x0

    .line 370
    goto :goto_56

    .line 376
    :cond_55
    const/4 v8, 0x0

    .line 389
    .end local v9    # "j":I
    .end local v10    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    .end local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_56
    :goto_56
    if-eqz v8, :cond_aa

    .line 395
    const/4 v4, 0x0

    .line 396
    .local v4, "intersection":Z
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_5a
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v10

    if-ge v9, v10, :cond_8d

    .line 397
    invoke-direct {p0, v9}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v10

    .line 399
    .local v10, "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v10}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v11

    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v12

    if-ne v11, v12, :cond_8a

    .line 400
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_6f
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v12

    if-ge v11, v12, :cond_8a

    .line 401
    nop

    .line 402
    invoke-direct {p1, v11}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v12

    .line 404
    .local v12, "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    nop

    .line 405
    invoke-interface {v10, v12}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v13

    .line 406
    .local v13, "constraintType":I
    if-eqz v13, :cond_89

    if-eq v13, v5, :cond_89

    if-ne v13, v6, :cond_86

    goto :goto_89

    .line 400
    .end local v12    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v13    # "constraintType":I
    :cond_86
    add-int/lit8 v11, v11, 0x1

    goto :goto_6f

    .line 409
    .restart local v12    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    .restart local v13    # "constraintType":I
    :cond_89
    :goto_89
    const/4 v4, 0x1

    .line 396
    .end local v10    # "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v11    # "k":I
    .end local v12    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v13    # "constraintType":I
    :cond_8a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 415
    .end local v9    # "j":I
    :cond_8d
    if-nez v4, :cond_a5

    .line 416
    if-nez v1, :cond_97

    .line 417
    new-instance v5, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v5}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    move-object v1, v5

    .line 419
    :cond_97
    nop

    .line 420
    invoke-direct {p0, v3}, Lsun/security/x509/GeneralSubtrees;->createWidestSubtree(Lsun/security/x509/GeneralNameInterface;)Lsun/security/x509/GeneralSubtree;

    move-result-object v5

    .line 421
    .local v5, "widestSubtree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v1, v5}, Lsun/security/x509/GeneralSubtrees;->contains(Lsun/security/x509/GeneralSubtree;)Z

    move-result v9

    if-nez v9, :cond_a5

    .line 422
    invoke-virtual {v1, v5}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 427
    .end local v5    # "widestSubtree":Lsun/security/x509/GeneralSubtree;
    :cond_a5
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 428
    add-int/lit8 v2, v2, -0x1

    .line 350
    .end local v3    # "thisEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "intersection":Z
    .end local v7    # "removeThisEntry":Z
    .end local v8    # "sameType":Z
    :cond_aa
    add-int/2addr v2, v6

    goto/16 :goto_1a

    .line 433
    .end local v2    # "i":I
    :cond_ad
    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v2

    if-lez v2, :cond_b6

    .line 434
    invoke-virtual {p0, v0}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    .line 439
    :cond_b6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b7
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v3

    if-ge v2, v3, :cond_f0

    .line 440
    invoke-virtual {p1, v2}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v3

    .line 441
    .local v3, "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    invoke-static {v3}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v7

    .line 442
    .local v7, "otherEntry":Lsun/security/x509/GeneralNameInterface;
    const/4 v8, 0x0

    .line 443
    .local v8, "diffType":Z
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_c7
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v10

    if-ge v9, v10, :cond_e8

    .line 444
    invoke-direct {p0, v9}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v10

    .line 445
    .local v10, "thisEntry":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v10, v7}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_e3

    if-eqz v11, :cond_e1

    if-eq v11, v6, :cond_e1

    if-eq v11, v5, :cond_e1

    if-eq v11, v4, :cond_e1

    .line 460
    goto :goto_e5

    .line 455
    :cond_e1
    const/4 v8, 0x0

    .line 458
    goto :goto_e8

    .line 447
    :cond_e3
    const/4 v8, 0x1

    .line 450
    nop

    .line 443
    .end local v10    # "thisEntry":Lsun/security/x509/GeneralNameInterface;
    :goto_e5
    add-int/lit8 v9, v9, 0x1

    goto :goto_c7

    .line 464
    .end local v9    # "j":I
    :cond_e8
    :goto_e8
    if-eqz v8, :cond_ed

    .line 465
    invoke-virtual {p0, v3}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 439
    .end local v3    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    .end local v7    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v8    # "diffType":Z
    :cond_ed
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    .line 470
    .end local v2    # "i":I
    :cond_f0
    return-object v1

    .line 323
    .end local v0    # "newThis":Lsun/security/x509/GeneralSubtrees;
    .end local v1    # "newExcluded":Lsun/security/x509/GeneralSubtrees;
    :cond_f1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "other GeneralSubtrees must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reduce(Lsun/security/x509/GeneralSubtrees;)V
    .registers 9
    .param p1, "excluded"    # Lsun/security/x509/GeneralSubtrees;

    .line 497
    if-nez p1, :cond_3

    .line 498
    return-void

    .line 500
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v1

    .local v1, "n":I
    :goto_8
    if-ge v0, v1, :cond_34

    .line 501
    invoke-direct {p1, v0}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v2

    .line 502
    .local v2, "excludedName":Lsun/security/x509/GeneralNameInterface;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_f
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 503
    invoke-direct {p0, v3}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 504
    .local v4, "permitted":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v2, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_29

    if-eq v5, v6, :cond_23

    goto :goto_2f

    .line 513
    :cond_23
    invoke-virtual {p0, v3}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 514
    add-int/lit8 v3, v3, -0x1

    .line 515
    goto :goto_2f

    .line 508
    :cond_29
    invoke-virtual {p0, v3}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 509
    add-int/lit8 v3, v3, -0x1

    .line 510
    nop

    .line 502
    .end local v4    # "permitted":Lsun/security/x509/GeneralNameInterface;
    :goto_2f
    add-int/2addr v3, v6

    goto :goto_f

    .line 500
    .end local v2    # "excludedName":Lsun/security/x509/GeneralNameInterface;
    .end local v3    # "j":I
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 524
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_34
    return-void
.end method

.method public blacklist remove(I)V
    .registers 3
    .param p1, "index"    # I

    .line 91
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 109
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   GeneralSubtrees:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

.method public blacklist trees()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    return-object v0
.end method

.method public blacklist union(Lsun/security/x509/GeneralSubtrees;)V
    .registers 5
    .param p1, "other"    # Lsun/security/x509/GeneralSubtrees;

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
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_13
    invoke-direct {p0}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    .line 486
    :cond_16
    return-void
.end method
