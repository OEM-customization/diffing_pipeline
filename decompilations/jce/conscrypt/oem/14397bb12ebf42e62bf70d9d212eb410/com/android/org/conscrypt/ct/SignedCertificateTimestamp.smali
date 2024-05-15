.class public Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
.super Ljava/lang/Object;
.source "SignedCertificateTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;,
        Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;,
        Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    }
.end annotation


# instance fields
.field private final extensions:[B

.field private final logId:[B

.field private final origin:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field private final signature:Lcom/android/org/conscrypt/ct/DigitallySigned;

.field private final timestamp:J

.field private final version:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;[BJ[BLcom/android/org/conscrypt/ct/DigitallySigned;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)V
    .registers 9
    .param p1, "version"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    .param p2, "logId"    # [B
    .param p3, "timestamp"    # J
    .param p5, "extensions"    # [B
    .param p6, "signature"    # Lcom/android/org/conscrypt/ct/DigitallySigned;
    .param p7, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x18
    nop

    .line 61
    #disallowed odex opcode
    #iput-object-quick p2, p0, field@0xc
    nop

    .line 62
    #disallowed odex opcode
    #iput-wide-quick p3, p0, field@0x20
    nop

    .line 63
    #disallowed odex opcode
    #iput-object-quick p5, p0, field@0x8
    nop

    .line 64
    #disallowed odex opcode
    #iput-object-quick p6, p0, field@0x14
    nop

    .line 65
    #disallowed odex opcode
    #iput-object-quick p7, p0, field@0x10
    nop

    .line 66
    return-void
.end method

.method public static decode(Ljava/io/InputStream;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .registers 11
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    .line 93
    .local v0, "version":I
    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->V1:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@15
    nop

    move-result v1

    if-eq v0, v1, :cond_27

    .line 94
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported SCT version "

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v0}, vtable@72
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@7
    nop

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_27
    new-instance v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 98
    sget-object v2, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->V1:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    .line 99
    const/16 v3, 0x20

    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    .line 100
    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/android/org/conscrypt/ct/Serialization;->readLong(Ljava/io/InputStream;I)J

    move-result-wide v4

    .line 101
    const/4 v6, 0x2

    invoke-static {p0, v6}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    .line 102
    invoke-static {p0}, Lcom/android/org/conscrypt/ct/DigitallySigned;->decode(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v7

    move-object v8, p1

    .line 97
    invoke-direct/range {v1 .. v8}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;[BJ[BLcom/android/org/conscrypt/ct/DigitallySigned;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)V

    return-object v1
.end method

.method public static decode([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .registers 3
    .param p0, "input"    # [B
    .param p1, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->decode(Ljava/io/InputStream;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encodeTBS(Ljava/io/OutputStream;Lcom/android/org/conscrypt/ct/CertificateEntry;)V
    .registers 6
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "certEntry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 120
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x18
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@15
    nop

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 121
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->CERTIFICATE_TIMESTAMP:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@15
    nop

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 123
    #disallowed odex opcode
    #iget-wide-quick v0, p0, field@0x20
    nop

    const/16 v2, 0x8

    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 124
    #disallowed odex opcode
    #invoke-virtual-quick {p2, p1}, vtable@11
    nop

    .line 125
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->writeVariableBytes(Ljava/io/OutputStream;[BI)V

    .line 126
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public encodeTBS(Lcom/android/org/conscrypt/ct/CertificateEntry;)[B
    .registers 4
    .param p1, "certEntry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v0, p1}, vtable@11
    nop

    .line 135
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@18
    nop

    move-result-object v1

    return-object v1
.end method

.method public getExtensions()[B
    .registers 2

    .prologue
    .line 78
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    return-object v0
.end method

.method public getLogID()[B
    .registers 2

    .prologue
    .line 72
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    return-object v0
.end method

.method public getOrigin()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .registers 2

    .prologue
    .line 84
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x10
    nop

    return-object v0
.end method

.method public getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;
    .registers 2

    .prologue
    .line 81
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 75
    #disallowed odex opcode
    #iget-wide-quick v0, p0, field@0x20
    nop

    return-wide v0
.end method

.method public getVersion()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    .registers 2

    .prologue
    .line 69
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x18
    nop

    return-object v0
.end method
