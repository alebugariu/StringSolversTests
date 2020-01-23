(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.at tmp_str0 tmp_int1) (str.++ tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:13.849856  3223 UnaryAutomaton.cpp:325] 1
;I0818 17:37:13.849880  3223 UnaryAutomaton.cpp:326] 1
;I0818 17:37:13.849889  3223 UnaryAutomaton.cpp:327] 1
;F0818 17:37:13.857008  3223 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f0c4b58df5d  google::LogMessage::Fail()
;    @     0x7f0c4b590513  google::LogMessage::SendToLog()
;    @     0x7f0c4b58daeb  google::LogMessage::Flush()
;    @     0x7f0c4b58f45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f0c4bbb1a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f0c4bbff992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f0c4bafe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c4bbb0762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f0c4bbfcdf0  Vlab::SMT::ToString::accept()
;    @     0x7f0c4bafe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c4bbab7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f0c4bbf8450  Vlab::SMT::Eq::accept()
;    @     0x7f0c4bafe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c4bba9878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f0c4bbea5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f0c4bbe196e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f0c4bbf6b5c  Vlab::SMT::And::accept()
;    @     0x7f0c4bafe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c4bbeaa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0c4bbe0d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f0c4bbf4d2a  Vlab::SMT::Assert::accept()
;    @     0x7f0c4bafe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c4bc03699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f0c4bbf4067  Vlab::SMT::Script::visit_children()
;    @     0x7f0c4bafe9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0c4bbe0b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f0c4bbf403c  Vlab::SMT::Script::accept()
;    @     0x7f0c4bafe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c4bbe07bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f0c4bae4b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f0c4ac40830  __libc_start_main
