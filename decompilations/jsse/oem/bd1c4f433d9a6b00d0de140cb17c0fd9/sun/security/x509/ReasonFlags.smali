.class public Lsun/security/x509/ReasonFlags;
.super Ljava/lang/Object;
.source "ReasonFlags.java"


# static fields
.field public static final AA_COMPROMISE:Ljava/lang/String; = "aa_compromise"

.field public static final AFFILIATION_CHANGED:Ljava/lang/String; = "affiliation_changed"

.field public static final CA_COMPROMISE:Ljava/lang/String; = "ca_compromise"

.field public static final CERTIFICATE_HOLD:Ljava/lang/String; = "certificate_hold"

.field public static final CESSATION_OF_OPERATION:Ljava/lang/String; = "cessation_of_operation"

.field public static final KEY_COMPROMISE:Ljava/lang/String; = "key_compromise"

.field private static final NAMES:[Ljava/lang/String;

.field public static final PRIVILEGE_WITHDRAWN:Ljava/lang/String; = "privilege_withdrawn"

.field public static final SUPERSEDED:Ljava/lang/String; = "superseded"

.field public static final UNUSED:Ljava/lang/String; = "unused"


# instance fields
.field private bitString:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 72
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    const-string/jumbo v1, "unused"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "key_compromise"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "ca_compromise"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "affiliation_changed"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "superseded"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "cessation_of_operation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "certificate_hold"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "privilege_withdrawn"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "aa_compromise"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 72
    sput-object v0, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Lsun/security/util/BitArray;)V
    .registers 3
    .param p1, "reasons"    # Lsun/security/util/BitArray;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 144
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
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 154
    .local v0, "derVal":Lsun/security/util/DerValue;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 155
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 165
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "reasons"    # [B

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 126
    return-void
.end method

.method public constructor <init>([Z)V
    .registers 2
    .param p1, "reasons"    # [Z

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 135
    return-void
.end method

.method private isSet(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_a

    .line 103
    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    aget-boolean v0, v0, p1

    .line 102
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static name2Index(Ljava/lang/String;)I
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 86
    sget-object v1, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 87
    return v0

    .line 85
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_14
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Name not recognized by ReasonFlags"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private set(IZ)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_14

    .line 112
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [Z

    .line 113
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    iget-object v2, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 114
    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 116
    .end local v0    # "tmp":[Z
    :cond_14
    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    aput-boolean p2, v1, p1

    .line 117
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/ReasonFlags;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .registers 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lsun/security/util/BitArray;

    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    invoke-direct {v0, v1}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 245
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p1}, Lsun/security/x509/ReasonFlags;->name2Index(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .registers 4
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
    .line 252
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 253
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 254
    sget-object v2, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 256
    :cond_15
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method public getFlags()[Z
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

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
    .line 178
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_d

    .line 179
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute must be of type Boolean."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 182
    .local v0, "val":Z
    invoke-static {p1}, Lsun/security/x509/ReasonFlags;->name2Index(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/ReasonFlags;->set(IZ)V

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Reason Flags [\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 206
    const-string/jumbo v1, "  Unused\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_15
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 209
    const-string/jumbo v1, "  Key Compromise\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_22
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 212
    const-string/jumbo v1, "  CA Compromise\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_2f
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 215
    const-string/jumbo v1, "  Affiliation_Changed\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_3c
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 218
    const-string/jumbo v1, "  Superseded\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_49
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 221
    const-string/jumbo v1, "  Cessation Of Operation\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_56
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 224
    const-string/jumbo v1, "  Certificate Hold\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_63
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 227
    const-string/jumbo v1, "  Privilege Withdrawn\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_70
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 230
    const-string/jumbo v1, "  AA Compromise\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_7e
    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
