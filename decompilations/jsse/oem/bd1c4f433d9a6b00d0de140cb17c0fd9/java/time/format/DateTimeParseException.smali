.class public Ljava/time/format/DateTimeParseException;
.super Ljava/time/DateTimeException;
.source "DateTimeParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x3bbd215ce3915525L


# instance fields
.field private final errorIndex:I

.field private final parsedString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "parsedData"    # Ljava/lang/CharSequence;
    .param p3, "errorIndex"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/time/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    .line 102
    iput p3, p0, Ljava/time/format/DateTimeParseException;->errorIndex:I

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "parsedData"    # Ljava/lang/CharSequence;
    .param p3, "errorIndex"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 114
    invoke-direct {p0, p1, p4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/time/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    .line 116
    iput p3, p0, Ljava/time/format/DateTimeParseException;->errorIndex:I

    .line 117
    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Ljava/time/format/DateTimeParseException;->errorIndex:I

    return v0
.end method

.method public getParsedString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljava/time/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    return-object v0
.end method
