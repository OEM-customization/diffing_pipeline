.class Ljava/util/zip/ZipConstants64;
.super Ljava/lang/Object;
.source "ZipConstants64.java"


# static fields
.field static final blacklist EFS:I = 0x800

.field static final blacklist EXTID_EXTT:I = 0x5455

.field static final blacklist EXTID_NTFS:I = 0xa

.field static final blacklist EXTID_UNIX:I = 0xd

.field static final blacklist EXTID_ZIP64:I = 0x1

.field static final blacklist EXTT_FLAG_LAT:I = 0x2

.field static final blacklist EXTT_FLAG_LMT:I = 0x1

.field static final blacklist EXTT_FLAT_CT:I = 0x4

.field static final blacklist ZIP64_ENDDSK:I = 0x14

.field static final blacklist ZIP64_ENDEXT:I = 0x38

.field static final blacklist ZIP64_ENDHDR:I = 0x38

.field static final blacklist ZIP64_ENDLEN:I = 0x4

.field static final blacklist ZIP64_ENDNMD:I = 0x10

.field static final blacklist ZIP64_ENDOFF:I = 0x30

.field static final blacklist ZIP64_ENDSIG:J = 0x6064b50L

.field static final blacklist ZIP64_ENDSIZ:I = 0x28

.field static final blacklist ZIP64_ENDTOD:I = 0x18

.field static final blacklist ZIP64_ENDTOT:I = 0x20

.field static final blacklist ZIP64_ENDVEM:I = 0xc

.field static final blacklist ZIP64_ENDVER:I = 0xe

.field static final blacklist ZIP64_EXTCRC:I = 0x4

.field static final blacklist ZIP64_EXTHDR:I = 0x18

.field static final blacklist ZIP64_EXTID:I = 0x1

.field static final blacklist ZIP64_EXTLEN:I = 0x10

.field static final blacklist ZIP64_EXTSIZ:I = 0x8

.field static final blacklist ZIP64_LOCDSK:I = 0x4

.field static final blacklist ZIP64_LOCHDR:I = 0x14

.field static final blacklist ZIP64_LOCOFF:I = 0x8

.field static final blacklist ZIP64_LOCSIG:J = 0x7064b50L

.field static final blacklist ZIP64_LOCTOT:I = 0x10

.field static final blacklist ZIP64_MAGICCOUNT:I = 0xffff

.field static final blacklist ZIP64_MAGICVAL:J = 0xffffffffL


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
