(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str13 () String)
(assert
 (= (str.replace (int.to.str tmp_int0) (int.to.str tmp_int0) (int.to.str tmp_int0)) (str.at tmp_str13 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str13 = a
;actual status: not_implemented
;I0818 17:37:14.434463  3229 UnaryAutomaton.cpp:325] 1
;I0818 17:37:14.434484  3229 UnaryAutomaton.cpp:326] 1
;I0818 17:37:14.434492  3229 UnaryAutomaton.cpp:327] 1
;F0818 17:37:14.505815  3229 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f2047796f5d  google::LogMessage::Fail()
;    @     0x7f2047799513  google::LogMessage::SendToLog()
;    @     0x7f2047796aeb  google::LogMessage::Flush()
;    @     0x7f204779845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f2047dbaa26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f2047e08992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f2047d079ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2047db9762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f2047e05df0  Vlab::SMT::ToString::accept()
;    @     0x7f2047d079ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2047db47f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f2047e01450  Vlab::SMT::Eq::accept()
;    @     0x7f2047d079ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2047db2878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f2047df35ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f2047dea96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f2047dffb5c  Vlab::SMT::And::accept()
;    @     0x7f2047d079ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2047df3a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2047de9d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f2047dfdd2a  Vlab::SMT::Assert::accept()
;    @     0x7f2047d079ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2047e0c699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2047dfd067  Vlab::SMT::Script::visit_children()
;    @     0x7f2047d079e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2047de9b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f2047dfd03c  Vlab::SMT::Script::accept()
;    @     0x7f2047d079ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2047de97bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f2047cedb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f2046e49830  __libc_start_main
