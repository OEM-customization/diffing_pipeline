.class public Lsun/security/x509/DistributionPoint;
.super Ljava/lang/Object;
.source "DistributionPoint.java"


# static fields
.field public static final AA_COMPROMISE:I = 0x8

.field public static final AFFILIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final PRIVILEGE_WITHDRAWN:I = 0x7

.field private static final REASON_STRINGS:[Ljava/lang/String;

.field public static final SUPERSEDED:I = 0x4

.field private static final TAG_DIST_PT:B = 0x0t

.field private static final TAG_FULL_NAME:B = 0x0t

.field private static final TAG_ISSUER:B = 0x2t

.field private static final TAG_REASONS:B = 0x1t

.field private static final TAG_REL_NAME:B = 0x1t


# instance fields
.field private crlIssuer:Lsun/security/x509/GeneralNames;

.field private fullName:Lsun/security/x509/GeneralNames;

.field private volatile hashCode:I

.field private reasonFlags:[Z

.field private relativeName:Lsun/security/x509/RDN;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 109
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 110
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "key compromise"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "CA compromise"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "affiliation changed"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 114
    const-string/jumbo v1, "superseded"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 115
    const-string/jumbo v1, "cessation of operation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 116
    const-string/jumbo v1, "certificate hold"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 117
    const-string/jumbo v1, "privilege withdrawn"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 118
    const-string/jumbo v1, "AA compromise"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 109
    sput-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .registers 8
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x30

    const/4 v3, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v4, :cond_30

    .line 192
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    .local v1, "opt":Lsun/security/util/DerValue;
    :cond_14
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 207
    .local v0, "distPnt":Lsun/security/util/DerValue;
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 208
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    .line 207
    if-eqz v2, :cond_5f

    .line 209
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 210
    new-instance v2, Lsun/security/x509/GeneralNames;

    invoke-direct {v2, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    .line 198
    .end local v0    # "distPnt":Lsun/security/util/DerValue;
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :cond_30
    :goto_30
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v2, :cond_da

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_da

    .line 199
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 201
    .restart local v1    # "opt":Lsun/security/util/DerValue;
    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 202
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-nez v2, :cond_56

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v2, :cond_14

    .line 203
    :cond_56
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate DistributionPointName in DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    .restart local v0    # "distPnt":Lsun/security/util/DerValue;
    :cond_5f
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 212
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    .line 211
    if-eqz v2, :cond_78

    .line 213
    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 214
    new-instance v2, Lsun/security/x509/RDN;

    invoke-direct {v2, v0}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    goto :goto_30

    .line 216
    :cond_78
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid DistributionPointName in DistributionPoint"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    .end local v0    # "distPnt":Lsun/security/util/DerValue;
    :cond_81
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 220
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 219
    if-eqz v2, :cond_ab

    .line 221
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v2, :cond_9c

    .line 222
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate Reasons in DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_9c
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 226
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    goto :goto_30

    .line 227
    :cond_ab
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 228
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    .line 227
    if-eqz v2, :cond_d1

    .line 229
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_c5

    .line 230
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate CRLIssuer in DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_c5
    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 234
    new-instance v2, Lsun/security/x509/GeneralNames;

    invoke-direct {v2, v1}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    goto/16 :goto_30

    .line 236
    :cond_d1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :cond_da
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-nez v2, :cond_ef

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-nez v2, :cond_ef

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-nez v2, :cond_ef

    .line 241
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "One of fullName, relativeName,  and crlIssuer has to be set"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_ef
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNames;[ZLsun/security/x509/GeneralNames;)V
    .registers 6
    .param p1, "fullName"    # Lsun/security/x509/GeneralNames;
    .param p2, "reasonFlags"    # [Z
    .param p3, "crlIssuer"    # Lsun/security/x509/GeneralNames;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    if-nez p1, :cond_10

    if-nez p3, :cond_10

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 155
    const-string/jumbo v1, "fullName and crlIssuer may not both be null"

    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_10
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    .line 158
    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    .line 159
    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    .line 160
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/RDN;[ZLsun/security/x509/GeneralNames;)V
    .registers 6
    .param p1, "relativeName"    # Lsun/security/x509/RDN;
    .param p2, "reasonFlags"    # [Z
    .param p3, "crlIssuer"    # Lsun/security/x509/GeneralNames;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    if-nez p1, :cond_10

    if-nez p3, :cond_10

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 177
    const-string/jumbo v1, "relativeName and crlIssuer may not both be null"

    .line 176
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_10
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    .line 180
    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    .line 181
    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    .line 182
    return-void
.end method

.method private static reasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .prologue
    .line 372
    if-lez p0, :cond_c

    sget-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 373
    sget-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 375
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .registers 12
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, -0x80

    const/4 v7, 0x1

    .line 281
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 284
    .local v5, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-nez v6, :cond_11

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v6, :cond_32

    .line 285
    :cond_11
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 286
    .local v1, "distributionPoint":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v6, :cond_68

    .line 287
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 288
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v6, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 290
    invoke-static {v8, v7, v9}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 289
    invoke-virtual {v1, v6, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 300
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    :cond_2b
    :goto_2b
    invoke-static {v8, v7, v9}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 299
    invoke-virtual {v5, v6, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 303
    .end local v1    # "distributionPoint":Lsun/security/util/DerOutputStream;
    :cond_32
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v6, :cond_4c

    .line 304
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 305
    .local v3, "reasons":Lsun/security/util/DerOutputStream;
    new-instance v4, Lsun/security/util/BitArray;

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    invoke-direct {v4, v6}, Lsun/security/util/BitArray;-><init>([Z)V

    .line 306
    .local v4, "rf":Lsun/security/util/BitArray;
    invoke-virtual {v3, v4}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 308
    invoke-static {v8, v9, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 307
    invoke-virtual {v5, v6, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 311
    .end local v3    # "reasons":Lsun/security/util/DerOutputStream;
    .end local v4    # "rf":Lsun/security/util/BitArray;
    :cond_4c
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v6, :cond_62

    .line 312
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 313
    .local v2, "issuer":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v6, v2}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 315
    const/4 v6, 0x2

    invoke-static {v8, v7, v6}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 314
    invoke-virtual {v5, v6, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 318
    .end local v2    # "issuer":Lsun/security/util/DerOutputStream;
    :cond_62
    const/16 v6, 0x30

    invoke-virtual {p1, v6, v5}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 319
    return-void

    .line 292
    .restart local v1    # "distributionPoint":Lsun/security/util/DerOutputStream;
    :cond_68
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v6, :cond_2b

    .line 293
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 294
    .restart local v0    # "derOut":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v6, v0}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    .line 296
    invoke-static {v8, v7, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 295
    invoke-virtual {v1, v6, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    goto :goto_2b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 328
    if-ne p0, p1, :cond_4

    .line 329
    const/4 v2, 0x1

    return v2

    .line 331
    :cond_4
    instance-of v2, p1, Lsun/security/x509/DistributionPoint;

    if-nez v2, :cond_a

    .line 332
    const/4 v2, 0x0

    return v2

    :cond_a
    move-object v1, p1

    .line 334
    check-cast v1, Lsun/security/x509/DistributionPoint;

    .line 336
    .local v1, "other":Lsun/security/x509/DistributionPoint;
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 337
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 336
    if-eqz v2, :cond_34

    .line 338
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 336
    if-eqz v2, :cond_34

    .line 339
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    .line 340
    :goto_33
    return v0

    .line 336
    :cond_34
    const/4 v0, 0x0

    .local v0, "equal":Z
    goto :goto_33
.end method

.method public getCRLIssuer()Lsun/security/x509/GeneralNames;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public getFullName()Lsun/security/x509/GeneralNames;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public getReasonFlags()[Z
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    return-object v0
.end method

.method public getRelativeName()Lsun/security/x509/RDN;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 344
    iget v0, p0, Lsun/security/x509/DistributionPoint;->hashCode:I

    .line 345
    .local v0, "hash":I
    if-nez v0, :cond_3d

    .line 346
    const/4 v0, 0x1

    .line 347
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_11

    .line 348
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 350
    :cond_11
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v2, :cond_1c

    .line 351
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v2}, Lsun/security/x509/RDN;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 353
    :cond_1c
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_27

    .line 354
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 356
    :cond_27
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v2, :cond_3b

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_3b

    .line 358
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_38

    .line 359
    add-int/2addr v0, v1

    .line 357
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 363
    .end local v1    # "i":I
    :cond_3b
    iput v0, p0, Lsun/security/x509/DistributionPoint;->hashCode:I

    .line 365
    :cond_3d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_1c

    .line 384
    const-string/jumbo v2, "DistributionPoint:\n     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_1c
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v2, :cond_33

    .line 387
    const-string/jumbo v2, "DistributionPoint:\n     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_33
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v2, :cond_61

    .line 391
    const-string/jumbo v2, "   ReasonFlags:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3e
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_61

    .line 393
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_5e

    .line 394
    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lsun/security/x509/DistributionPoint;->reasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 398
    .end local v0    # "i":I
    :cond_61
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_78

    .line 399
    const-string/jumbo v2, "   CRLIssuer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
