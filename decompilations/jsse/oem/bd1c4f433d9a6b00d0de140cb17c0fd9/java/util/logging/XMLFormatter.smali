.class public Ljava/util/logging/XMLFormatter;
.super Ljava/util/logging/Formatter;
.source "XMLFormatter.java"


# instance fields
.field private manager:Ljava/util/logging/LogManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/XMLFormatter;->manager:Ljava/util/logging/LogManager;

    .line 46
    return-void
.end method

.method private a2(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "x"    # I

    .prologue
    .line 51
    const/16 v0, 0xa

    if-ge p2, v0, :cond_9

    .line 52
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    return-void
.end method

.method private appendISO8601(Ljava/lang/StringBuilder;J)V
    .registers 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "millis"    # J

    .prologue
    const/16 v3, 0x3a

    const/16 v2, 0x2d

    .line 59
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 60
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuilder;I)V

    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuilder;I)V

    .line 66
    const/16 v1, 0x54

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuilder;I)V

    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuilder;I)V

    .line 70
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuilder;I)V

    .line 72
    return-void
.end method

.method private escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p2, :cond_5

    .line 79
    const-string/jumbo p2, "<null>"

    .line 81
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 82
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 83
    .local v0, "ch":C
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1d

    .line 84
    const-string/jumbo v2, "&lt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 85
    :cond_1d
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_28

    .line 86
    const-string/jumbo v2, "&gt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 87
    :cond_28
    const/16 v2, 0x26

    if-ne v0, v2, :cond_33

    .line 88
    const-string/jumbo v2, "&amp;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 90
    :cond_33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 93
    .end local v0    # "ch":C
    :cond_37
    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 14
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v10, 0x1f4

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "<record>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v10, "  <date>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v10

    invoke-direct {p0, v7, v10, v11}, Ljava/util/logging/XMLFormatter;->appendISO8601(Ljava/lang/StringBuilder;J)V

    .line 111
    const-string/jumbo v10, "</date>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v10, "  <millis>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v10, "</millis>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v10, "  <sequence>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v10, "</sequence>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_5b

    .line 123
    const-string/jumbo v10, "  <logger>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {p0, v7, v5}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v10, "</logger>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_5b
    const-string/jumbo v10, "  <level>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/logging/Level;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v10, "</level>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8b

    .line 133
    const-string/jumbo v10, "  <class>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v10, "</class>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_8b
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a4

    .line 139
    const-string/jumbo v10, "  <method>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v10, "</method>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_a4
    const-string/jumbo v10, "  <thread>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v10, "</thread>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_13f

    .line 150
    invoke-virtual {p0, p1}, Ljava/util/logging/XMLFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "message":Ljava/lang/String;
    const-string/jumbo v10, "  <message>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {p0, v7, v4}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v10, "</message>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string/jumbo v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .end local v4    # "message":Ljava/lang/String;
    :goto_d6
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    .line 164
    .local v0, "bundle":Ljava/util/ResourceBundle;
    if-eqz v0, :cond_10c

    :try_start_dc
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10c

    .line 165
    const-string/jumbo v10, "  <key>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v10, "</key>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v10, "  <catalog>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundleName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v10, "</catalog>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_10c} :catch_1e0

    .line 176
    :cond_10c
    :goto_10c
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v6

    .line 179
    .local v6, "parameters":[Ljava/lang/Object;
    if-eqz v6, :cond_154

    array-length v10, v6

    if-eqz v10, :cond_154

    .line 180
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_154

    .line 181
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_124
    array-length v10, v6

    if-ge v3, v10, :cond_154

    .line 182
    const-string/jumbo v10, "  <param>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :try_start_12d
    aget-object v10, v6, v3

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_136} :catch_14c

    .line 188
    :goto_136
    const-string/jumbo v10, "</param>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_124

    .line 156
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    .end local v3    # "i":I
    .end local v6    # "parameters":[Ljava/lang/Object;
    :cond_13f
    const-string/jumbo v10, "<message/>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d6

    .line 185
    .restart local v0    # "bundle":Ljava/util/ResourceBundle;
    .restart local v3    # "i":I
    .restart local v6    # "parameters":[Ljava/lang/Object;
    :catch_14c
    move-exception v1

    .line 186
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "???"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_136

    .line 192
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "i":I
    :cond_154
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_1d5

    .line 194
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v8

    .line 195
    .local v8, "th":Ljava/lang/Throwable;
    const-string/jumbo v10, "  <exception>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v10, "    <message>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v10, "</message>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v8}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    .line 200
    .local v9, "trace":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_17c
    array-length v10, v9

    if-ge v3, v10, :cond_1cf

    .line 201
    aget-object v2, v9, v3

    .line 202
    .local v2, "frame":Ljava/lang/StackTraceElement;
    const-string/jumbo v10, "    <frame>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string/jumbo v10, "      <class>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v10, "</class>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string/jumbo v10, "      <method>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v10, "</method>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    if-ltz v10, :cond_1c6

    .line 211
    const-string/jumbo v10, "      <line>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v10, "</line>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_1c6
    const-string/jumbo v10, "    </frame>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_17c

    .line 217
    .end local v2    # "frame":Ljava/lang/StackTraceElement;
    :cond_1cf
    const-string/jumbo v10, "  </exception>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .end local v3    # "i":I
    .end local v8    # "th":Ljava/lang/Throwable;
    .end local v9    # "trace":[Ljava/lang/StackTraceElement;
    :cond_1d5
    const-string/jumbo v10, "</record>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 172
    .end local v6    # "parameters":[Ljava/lang/Object;
    :catch_1e0
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    goto/16 :goto_10c
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 7
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "<?xml version=\"1.0\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    if-eqz p1, :cond_49

    .line 236
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 241
    :goto_11
    if-nez v1, :cond_1b

    .line 243
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_1b
    :try_start_1b
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 248
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_4b

    move-result-object v1

    .line 254
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :goto_23
    const-string/jumbo v4, " encoding=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string/jumbo v4, " standalone=\"no\"?>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo v4, "<!DOCTYPE log SYSTEM \"logger.dtd\">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string/jumbo v4, "<log>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 238
    :cond_49
    const/4 v1, 0x0

    .local v1, "encoding":Ljava/lang/String;
    goto :goto_11

    .line 249
    .end local v1    # "encoding":Ljava/lang/String;
    :catch_4b
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_23
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 3
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 270
    const-string/jumbo v0, "</log>\n"

    return-object v0
.end method
