package com.exam.tsinjo.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Getter
public class Payment {
  private Long id;
  private LocalDateTime date;
  private BigDecimal amount;
  private String method;
  private String volaPaymentId;
  private PaymentStatus status;
}
