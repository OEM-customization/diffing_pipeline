.class public Lcom/android/org/bouncycastle/asn1/x509/Time;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Time.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 4
    .param p1, "time"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_16

    .line 36
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    xor-int/lit8 v0, v0, 0x1

    .line 35
    if-eqz v0, :cond_16

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown object passed to Time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_16
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 9
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    const/4 v6, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    new-instance v2, Ljava/util/SimpleTimeZone;

    const-string/jumbo v4, "Z"

    invoke-direct {v2, v6, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 57
    .local v2, "tz":Ljava/util/SimpleTimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 60
    .local v1, "dateF":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "d":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 65
    .local v3, "year":I
    const/16 v4, 0x79e

    if-lt v3, v4, :cond_42

    const/16 v4, 0x801

    if-le v3, v4, :cond_4a

    .line 67
    :cond_42
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 73
    :goto_49
    return-void

    .line 71
    :cond_4a
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    goto :goto_49
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .registers 10
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v6, 0x0

    .line 84
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 88
    new-instance v2, Ljava/util/SimpleTimeZone;

    const-string/jumbo v4, "Z"

    invoke-direct {v2, v6, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 91
    .local v2, "tz":Ljava/util/SimpleTimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 92
    .local v1, "dateF":Ljava/text/SimpleDateFormat;
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 95
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "d":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 100
    .local v3, "year":I
    const/16 v4, 0x79e

    if-lt v3, v4, :cond_49

    const/16 v4, 0x801

    if-le v3, v4, :cond_51

    .line 102
    :cond_49
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 108
    :goto_50
    return-void

    .line 106
    :cond_51
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    goto :goto_50
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 113
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_9

    .line 115
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 117
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_15

    .line 119
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 121
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_15
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_21

    .line 123
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 126
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .registers 5

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v1, :cond_f

    .line 147
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedDate()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 151
    :cond_f
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_16
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v1

    return-object v1

    .line 155
    :catch_18
    move-exception v0

    .line 156
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid date string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_f
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
